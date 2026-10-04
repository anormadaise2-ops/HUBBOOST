from __future__ import annotations

import os
import secrets
import string
from functools import wraps

from flask import (
    Blueprint,
    current_app,
    jsonify,
    redirect,
    session,
    url_for,
)

# IMPORTANT :
# On utilise l'instance OAuth créée dans services/oauth.py.
# Elle est initialisée par backend/app.py.
from ..services.oauth import oauth


# ============================================================
# BLUEPRINT
# ============================================================

auth_bp = Blueprint(
    "auth",
    __name__,
    url_prefix="/api/auth",
)


# ============================================================
# REPONSES JSON
# ============================================================

def success_response(**data):
    return jsonify({
        "success": True,
        **data,
    })


def error_response(message, status=400):
    return jsonify({
        "success": False,
        "error": message,
    }), status


# ============================================================
# UTILITAIRES
# ============================================================

def generate_username(length=5):
    """
    Génère un pseudo aléatoire composé de lettres minuscules.
    """

    alphabet = string.ascii_lowercase

    return "".join(
        secrets.choice(alphabet)
        for _ in range(length)
    )


def get_frontend_url():
    """
    Retourne l'URL du frontend.
    """

    return os.getenv(
        "FRONTEND_URL",
        "http://127.0.0.1:8080",
    ).strip().rstrip("/")


def finish_oauth_login(
    *,
    provider,
    email=None,
    username=None,
    name=None,
    picture=None,
    provider_id=None,
):
    """
    Créé la session utilisateur après une authentification OAuth.
    """

    if not username:
        username = generate_username(5)

    session.clear()

    session["authenticated"] = True
    session["provider"] = provider
    session["email"] = email
    session["username"] = username
    session["name"] = name
    session["picture"] = picture
    session["provider_id"] = provider_id

    return username


# ============================================================
# DISCORD
# ============================================================

@auth_bp.route("/discord", methods=["GET"])
def discord_login():
    """
    Démarre la connexion Discord.
    """

    client = oauth.create_client("discord")

    if client is None:
        return error_response(
            "Discord OAuth n'est pas configure.",
            503,
        )

    try:
        redirect_uri = url_for(
            "auth.discord_callback",
            _external=True,
        )

        return client.authorize_redirect(
            redirect_uri
        )

    except Exception:
        current_app.logger.exception(
            "Erreur Discord OAuth"
        )

        return error_response(
            "Impossible de demarrer Discord OAuth.",
            500,
        )


@auth_bp.route("/discord/callback", methods=["GET"])
def discord_callback():
    """
    Callback OAuth Discord.
    """

    client = oauth.create_client("discord")

    if client is None:
        return error_response(
            "Discord OAuth n'est pas configure.",
            503,
        )

    try:
        token = client.authorize_access_token()

        response = client.get(
            "users/@me",
            token=token,
        )

        response.raise_for_status()

        user = response.json()

        provider_id = user.get("id")

        if not provider_id:
            return error_response(
                "Discord n'a pas fourni l'identifiant utilisateur.",
                400,
            )

        email = user.get("email")

        username = (
            user.get("global_name")
            or user.get("username")
            or generate_username(5)
        )

        name = (
            user.get("global_name")
            or user.get("username")
            or "Utilisateur"
        )

        avatar_hash = user.get("avatar")

        picture = None

        if avatar_hash:
            picture = (
                "https://cdn.discordapp.com/"
                f"avatars/{provider_id}/{avatar_hash}.png"
            )

        finish_oauth_login(
            provider="discord",
            email=email,
            username=username,
            name=name,
            picture=picture,
            provider_id=provider_id,
        )

        return redirect(
            get_frontend_url()
            + "/?oauth=success"
        )

    except Exception:
        current_app.logger.exception(
            "Erreur Discord callback"
        )

        return redirect(
            get_frontend_url()
            + "/?oauth=error"
        )


# ============================================================
# GITHUB
# ============================================================

@auth_bp.route("/github", methods=["GET"])
def github_login():
    """
    Démarre la connexion GitHub.
    """

    client = oauth.create_client("github")

    if client is None:
        return error_response(
            "GitHub OAuth n'est pas configure.",
            503,
        )

    try:
        redirect_uri = url_for(
            "auth.github_callback",
            _external=True,
        )

        return client.authorize_redirect(
            redirect_uri
        )

    except Exception:
        current_app.logger.exception(
            "Erreur GitHub OAuth"
        )

        return error_response(
            "Impossible de demarrer GitHub OAuth.",
            500,
        )


@auth_bp.route("/github/callback", methods=["GET"])
def github_callback():
    """
    Callback OAuth GitHub.
    """

    client = oauth.create_client("github")

    if client is None:
        return error_response(
            "GitHub OAuth n'est pas configure.",
            503,
        )

    try:
        token = client.authorize_access_token()

        response = client.get(
            "user",
            token=token,
        )

        response.raise_for_status()

        user = response.json()

        provider_id = user.get("id")

        if not provider_id:
            return error_response(
                "GitHub n'a pas fourni l'identifiant utilisateur.",
                400,
            )

        email = user.get("email")

        # GitHub peut ne pas retourner l'email
        # directement dans /user.
        if not email:
            email_response = client.get(
                "user/emails",
                token=token,
            )

            if email_response.status_code == 200:
                emails = email_response.json()

                # Priorité à l'adresse principale vérifiée.
                for item in emails:
                    if (
                        item.get("primary")
                        and item.get("verified")
                    ):
                        email = item.get("email")
                        break

                # Sinon, prendre une adresse vérifiée.
                if not email:
                    for item in emails:
                        if item.get("verified"):
                            email = item.get("email")
                            break

        if not email:
            return error_response(
                "Impossible de recuperer l'adresse e-mail GitHub.",
                400,
            )

        username = (
            user.get("login")
            or generate_username(5)
        )

        name = (
            user.get("name")
            or user.get("login")
            or "Utilisateur"
        )

        picture = user.get("avatar_url")

        finish_oauth_login(
            provider="github",
            email=email,
            username=username,
            name=name,
            picture=picture,
            provider_id=provider_id,
        )

        return redirect(
            get_frontend_url()
            + "/?oauth=success"
        )

    except Exception:
        current_app.logger.exception(
            "Erreur GitHub callback"
        )

        return redirect(
            get_frontend_url()
            + "/?oauth=error"
        )


# ============================================================
# SESSION UTILISATEUR
# ============================================================

@auth_bp.route("/me", methods=["GET"])
def get_current_user():
    """
    Retourne l'utilisateur actuellement connecté.
    """

    if not session.get("authenticated"):
        return success_response(
            authenticated=False,
            user=None,
        )

    return success_response(
        authenticated=True,
        user={
            "email": session.get("email"),
            "username": session.get("username"),
            "name": session.get("name"),
            "picture": session.get("picture"),
            "provider": session.get("provider"),
            "provider_id": session.get("provider_id"),
        },
    )


# ============================================================
# LOGOUT
# ============================================================

@auth_bp.route("/logout", methods=["POST"])
def logout():
    """
    Déconnecte l'utilisateur.
    """

    session.clear()

    return success_response(
        message="Deconnexion reussie.",
    )


# ============================================================
# AUTHENTIFICATION PAR EMAIL
# ============================================================

def create_email_session(email, username=None):
    """
    Crée une session après validation du code email.
    """

    if not username:
        username = generate_username(5)

    session.clear()

    session["authenticated"] = True
    session["provider"] = "email"
    session["email"] = email
    session["username"] = username

    return username


# ============================================================
# DECORATEUR D'AUTHENTIFICATION
# ============================================================

def require_auth(function):
    """
    Empêche l'accès à une route si l'utilisateur
    n'est pas connecté.
    """

    @wraps(function)
    def wrapper(*args, **kwargs):

        if not session.get("authenticated"):
            return error_response(
                "Authentification requise.",
                401,
            )

        return function(
            *args,
            **kwargs,
        )

    return wrapper


# ============================================================
# STATUS
# ============================================================

@auth_bp.route("/status", methods=["GET"])
def auth_status():
    """
    Retourne l'état actuel de l'authentification.
    """

    return success_response(
        authenticated=bool(
            session.get("authenticated")
        ),
        provider=session.get("provider"),
        username=session.get("username"),
    )


# ============================================================
# INSTALLATION DU BLUEPRINT
# ============================================================

def register_auth(app):
    """
    Compatibilité avec d'anciens appels.

    OAuth est initialisé dans backend/app.py
    via backend.services.oauth.init_oauth(app).

    On ne réinitialise donc PAS OAuth ici.
    """

    if "auth" not in app.blueprints:
        app.register_blueprint(auth_bp)

    return app