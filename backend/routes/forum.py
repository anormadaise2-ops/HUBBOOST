from flask import Blueprint, jsonify, request, session

from ..models.forum import ForumPost, ForumReply
from ..models.user import User
from ..services.database import db


forum_bp = Blueprint(
    "forum",
    __name__,
    url_prefix="/api/forum"
)


# =========================================================
# CONFIGURATION
# =========================================================

CATEGORIES = {
    "general",
    "gaming",
    "windows",
    "hardware",
    "help",
    "showcase",
}

MAX_TITLE_LENGTH = 120
MAX_CONTENT_LENGTH = 10000


# =========================================================
# HELPERS
# =========================================================

def get_logged_user():
    """
    Récupère l'utilisateur connecté depuis la session OAuth.
    auth.py écrit session["user_id"] après une connexion.
    """

    user_id = session.get("user_id")

    if not user_id:
        return None

    return db.session.get(User, user_id)


def json_error(message, status=400):
    return jsonify({
        "success": False,
        "error": message
    }), status


def user_json(user):
    if user is None:
        return None

    return {
        "id": user.id,
        "username": user.username,
        "avatar_url": user.avatar_url,
    }


def post_json(post):
    data = post.to_dict()

    data["author"] = user_json(post.author)

    return data


def reply_json(reply):
    data = reply.to_dict()

    data["author"] = user_json(reply.author)

    return data


# =========================================================
# FORUM INFO
# =========================================================

@forum_bp.get("/")
def forum_info():
    return jsonify({
        "success": True,
        "service": "HUBBOOST Forum",
        "categories": sorted(CATEGORIES),
        "authentication": "Discord / GitHub"
    })


# =========================================================
# LISTE DES SUJETS
# =========================================================

@forum_bp.get("/posts")
def list_posts():

    category = request.args.get(
        "category",
        ""
    ).strip().lower()

    search = request.args.get(
        "search",
        ""
    ).strip()

    try:
        page = int(
            request.args.get(
                "page",
                1
            )
        )
    except (TypeError, ValueError):
        page = 1

    try:
        limit = int(
            request.args.get(
                "limit",
                20
            )
        )
    except (TypeError, ValueError):
        limit = 20

    page = max(page, 1)
    limit = min(max(limit, 1), 50)

    query = ForumPost.query

    # Filtre catégorie
    if category:

        if category not in CATEGORIES:
            return json_error(
                "Catégorie inconnue."
            )

        query = query.filter(
            ForumPost.category == category
        )

    # Recherche
    if search:

        search_value = f"%{search}%"

        query = query.filter(
            db.or_(
                ForumPost.title.ilike(search_value),
                ForumPost.content.ilike(search_value)
            )
        )

    # Pagination
    pagination = query.order_by(
        ForumPost.created_at.desc()
    ).paginate(
        page=page,
        per_page=limit,
        error_out=False
    )

    posts = [
        post_json(post)
        for post in pagination.items
    ]

    return jsonify({
        "success": True,
        "posts": posts,
        "pagination": {
            "page": pagination.page,
            "pages": pagination.pages,
            "total": pagination.total,
            "per_page": pagination.per_page,
            "has_next": pagination.has_next,
            "has_previous": pagination.has_prev
        }
    })


# =========================================================
# VOIR UN SUJET
# =========================================================

@forum_bp.get("/posts/<int:post_id>")
def get_post(post_id):

    post = db.session.get(
        ForumPost,
        post_id
    )

    if post is None:
        return json_error(
            "Sujet introuvable.",
            404
        )

    result = post_json(post)

    result["replies"] = [
        reply_json(reply)
        for reply in post.replies
    ]

    return jsonify({
        "success": True,
        "post": result
    })


# =========================================================
# CRÉER UN SUJET
# =========================================================

@forum_bp.post("/posts")
def create_post():

    user = get_logged_user()

    if user is None:
        return json_error(
            "Connexion Discord ou GitHub requise.",
            401
        )

    data = request.get_json(
        silent=True
    )

    if not isinstance(data, dict):
        return json_error(
            "Le corps de la requête doit être du JSON."
        )

    title = str(
        data.get("title", "")
    ).strip()

    content = str(
        data.get("content", "")
    ).strip()

    category = str(
        data.get(
            "category",
            "general"
        )
    ).strip().lower()

    if not title:
        return json_error(
            "Le titre est obligatoire."
        )

    if len(title) > MAX_TITLE_LENGTH:
        return json_error(
            f"Le titre doit faire au maximum "
            f"{MAX_TITLE_LENGTH} caractères."
        )

    if not content:
        return json_error(
            "Le contenu est obligatoire."
        )

    if len(content) > MAX_CONTENT_LENGTH:
        return json_error(
            f"Le contenu doit faire au maximum "
            f"{MAX_CONTENT_LENGTH} caractères."
        )

    if category not in CATEGORIES:
        return json_error(
            "Catégorie invalide."
        )

    post = ForumPost(
        title=title,
        content=content,
        category=category,
        author_id=user.id
    )

    try:

        db.session.add(post)
        db.session.commit()

    except Exception:

        db.session.rollback()

        return json_error(
            "Erreur lors de la création du sujet.",
            500
        )

    return jsonify({
        "success": True,
        "message": "Sujet créé.",
        "post": post_json(post)
    }), 201


# =========================================================
# RÉPONDRE À UN SUJET
# =========================================================

@forum_bp.post("/posts/<int:post_id>/replies")
def create_reply(post_id):

    user = get_logged_user()

    if user is None:
        return json_error(
            "Connexion Discord ou GitHub requise.",
            401
        )

    post = db.session.get(
        ForumPost,
        post_id
    )

    if post is None:
        return json_error(
            "Sujet introuvable.",
            404
        )

    data = request.get_json(
        silent=True
    )

    if not isinstance(data, dict):
        return json_error(
            "Le corps de la requête doit être du JSON."
        )

    content = str(
        data.get("content", "")
    ).strip()

    if not content:
        return json_error(
            "Le contenu est obligatoire."
        )

    if len(content) > MAX_CONTENT_LENGTH:
        return json_error(
            f"La réponse doit faire au maximum "
            f"{MAX_CONTENT_LENGTH} caractères."
        )

    reply = ForumReply(
        content=content,
        post_id=post.id,
        author_id=user.id
    )

    try:

        db.session.add(reply)
        db.session.commit()

    except Exception:

        db.session.rollback()

        return json_error(
            "Erreur lors de la création de la réponse.",
            500
        )

    return jsonify({
        "success": True,
        "message": "Réponse publiée.",
        "reply": reply_json(reply)
    }), 201


# =========================================================
# SUPPRIMER UN SUJET
# =========================================================

@forum_bp.delete("/posts/<int:post_id>")
def delete_post(post_id):

    user = get_logged_user()

    if user is None:
        return json_error(
            "Connexion requise.",
            401
        )

    post = db.session.get(
        ForumPost,
        post_id
    )

    if post is None:
        return json_error(
            "Sujet introuvable.",
            404
        )

    if post.author_id != user.id:
        return json_error(
            "Vous ne pouvez supprimer que vos propres sujets.",
            403
        )

    try:

        db.session.delete(post)
        db.session.commit()

    except Exception:

        db.session.rollback()

        return json_error(
            "Erreur lors de la suppression.",
            500
        )

    return jsonify({
        "success": True,
        "message": "Sujet supprimé."
    })


# =========================================================
# SUPPRIMER UNE RÉPONSE
# =========================================================

@forum_bp.delete("/replies/<int:reply_id>")
def delete_reply(reply_id):

    user = get_logged_user()

    if user is None:
        return json_error(
            "Connexion requise.",
            401
        )

    reply = db.session.get(
        ForumReply,
        reply_id
    )

    if reply is None:
        return json_error(
            "Réponse introuvable.",
            404
        )

    if reply.author_id != user.id:
        return json_error(
            "Vous ne pouvez supprimer que vos propres réponses.",
            403
        )

    try:

        db.session.delete(reply)
        db.session.commit()

    except Exception:

        db.session.rollback()

        return json_error(
            "Erreur lors de la suppression.",
            500
        )

    return jsonify({
        "success": True,
        "message": "Réponse supprimée."
    })
