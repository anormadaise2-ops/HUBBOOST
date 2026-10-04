from flask import Blueprint, jsonify, session

from ..models.user import User
from ..services.database import db


users_bp = Blueprint(
    "users",
    __name__,
    url_prefix="/api/users"
)


def get_logged_user():
    user_id = session.get("user_id")

    if not user_id:
        return None

    return db.session.get(User, user_id)


@users_bp.get("/")
def users_info():
    return jsonify({
        "success": True,
        "service": "HUBBOOST Users API"
    })


@users_bp.get("/me")
def current_user():
    user = get_logged_user()

    if user is None:
        return jsonify({
            "success": True,
            "authenticated": False,
            "user": None
        })

    return jsonify({
        "success": True,
        "authenticated": True,
        "user": user.to_dict()
    })


@users_bp.get("/<int:user_id>")
def get_user(user_id):
    user = db.session.get(User, user_id)

    if user is None:
        return jsonify({
            "success": False,
            "error": "Utilisateur introuvable."
        }), 404

    return jsonify({
        "success": True,
        "user": {
            "id": user.id,
            "username": user.username,
            "avatar_url": user.avatar_url,
            "provider": user.provider,
            "created_at": user.created_at.isoformat()
        }
    })
