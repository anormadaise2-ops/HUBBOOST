"""
HUBBOOST
Configuration centrale du backend
"""

import os
from pathlib import Path

from dotenv import load_dotenv


# ============================================================
# CHEMINS
# ============================================================

BASE_DIR = Path(__file__).resolve().parent
PROJECT_DIR = BASE_DIR.parent

# Charge le .env situé à la racine du projet
load_dotenv(PROJECT_DIR / ".env")


# ============================================================
# ENVIRONNEMENT
# ============================================================

ENVIRONMENT = os.getenv("FLASK_ENV", "development").strip().lower()

IS_PRODUCTION = ENVIRONMENT == "production"
IS_DEVELOPMENT = not IS_PRODUCTION


# ============================================================
# SERVEUR
# ============================================================

HOST = os.getenv("HOST", "127.0.0.1").strip()

try:
    PORT = int(os.getenv("PORT", "5000"))
except (TypeError, ValueError):
    PORT = 5000

DEBUG = IS_DEVELOPMENT


# ============================================================
# URLS
# ============================================================

FRONTEND_URL = os.getenv(
    "FRONTEND_URL",
    "http://127.0.0.1:8080"
).strip().rstrip("/")

PUBLIC_URL = os.getenv(
    "PUBLIC_URL",
    "http://127.0.0.1:5000"
).strip().rstrip("/")


# ============================================================
# SÉCURITÉ
# ============================================================

SECRET_KEY = os.getenv("SECRET_KEY", "").strip()

if not SECRET_KEY:
    if IS_PRODUCTION:
        raise RuntimeError(
            "SECRET_KEY doit être défini en production."
        )

    # Clé uniquement destinée au développement local
    SECRET_KEY = "hubboost-development-secret-change-me"


JWT_SECRET = os.getenv("JWT_SECRET", "").strip()

if not JWT_SECRET:
    if IS_PRODUCTION:
        raise RuntimeError(
            "JWT_SECRET doit être défini en production."
        )

    JWT_SECRET = "hubboost-development-jwt-secret-change-me"


# ============================================================
# SESSIONS
# ============================================================

SESSION_COOKIE_NAME = "hubboost_session"

SESSION_COOKIE_HTTPONLY = True

SESSION_COOKIE_SECURE = IS_PRODUCTION

SESSION_COOKIE_SAMESITE = (
    "None"
    if IS_PRODUCTION
    else "Lax"
)


# ============================================================
# DATABASE
# ============================================================

DATABASE_URL = os.getenv(
    "DATABASE_URL",
    "sqlite:///hubboost.db"
).strip()

# Ancien format parfois utilisé par certains hébergeurs
if DATABASE_URL.startswith("postgres://"):
    DATABASE_URL = DATABASE_URL.replace(
        "postgres://",
        "postgresql://",
        1
    )


# ============================================================
# SQLALCHEMY
# ============================================================

SQLALCHEMY_TRACK_MODIFICATIONS = False


# ============================================================
# CORS
# ============================================================

ALLOWED_ORIGINS = [
    "http://127.0.0.1:8080",
    "http://localhost:8080",
    "http://127.0.0.1:5000",
    "http://localhost:5000",
    "https://anormadaise2-ops.github.io",
]

if FRONTEND_URL and FRONTEND_URL not in ALLOWED_ORIGINS:
    ALLOWED_ORIGINS.append(FRONTEND_URL)


# ============================================================
# OAUTH DISCORD
# ============================================================

DISCORD_CLIENT_ID = os.getenv(
    "DISCORD_CLIENT_ID",
    ""
).strip()

DISCORD_CLIENT_SECRET = os.getenv(
    "DISCORD_CLIENT_SECRET",
    ""
).strip()

DISCORD_REDIRECT_URI = os.getenv(
    "DISCORD_REDIRECT_URI",
    ""
).strip()


# ============================================================
# OAUTH GITHUB
# ============================================================

GITHUB_CLIENT_ID = os.getenv(
    "GITHUB_CLIENT_ID",
    ""
).strip()

GITHUB_CLIENT_SECRET = os.getenv(
    "GITHUB_CLIENT_SECRET",
    ""
).strip()

GITHUB_REDIRECT_URI = os.getenv(
    "GITHUB_REDIRECT_URI",
    ""
).strip()


# ============================================================
# FORUM
# ============================================================

FORUM_ENABLED = (
    os.getenv(
        "FORUM_ENABLED",
        "true"
    ).strip().lower()
    in ("1", "true", "yes", "on")
)


try:
    MAX_POST_LENGTH = int(
        os.getenv(
            "MAX_POST_LENGTH",
            "10000"
        )
    )
except (TypeError, ValueError):
    MAX_POST_LENGTH = 10000


try:
    MAX_TOPIC_TITLE_LENGTH = int(
        os.getenv(
            "MAX_TOPIC_TITLE_LENGTH",
            "120"
        )
    )
except (TypeError, ValueError):
    MAX_TOPIC_TITLE_LENGTH = 120


# ============================================================
# INFORMATIONS DE CONFIGURATION
# ============================================================

def get_config_info():
    """
    Retourne une version sûre de la configuration.
    Aucun secret n'est exposé.
    """

    return {
        "environment": ENVIRONMENT,
        "production": IS_PRODUCTION,
        "development": IS_DEVELOPMENT,
        "host": HOST,
        "port": PORT,
        "frontend_url": FRONTEND_URL,
        "public_url": PUBLIC_URL,
        "database": (
            "configured"
            if DATABASE_URL
            else "not_configured"
        ),
        "discord_oauth": bool(
            DISCORD_CLIENT_ID
            and DISCORD_CLIENT_SECRET
        ),
        "github_oauth": bool(
            GITHUB_CLIENT_ID
            and GITHUB_CLIENT_SECRET
        ),
        "forum_enabled": FORUM_ENABLED,
    }


__all__ = [
    "BASE_DIR",
    "PROJECT_DIR",
    "ENVIRONMENT",
    "IS_PRODUCTION",
    "IS_DEVELOPMENT",
    "HOST",
    "PORT",
    "DEBUG",
    "FRONTEND_URL",
    "PUBLIC_URL",
    "SECRET_KEY",
    "JWT_SECRET",
    "SESSION_COOKIE_NAME",
    "SESSION_COOKIE_HTTPONLY",
    "SESSION_COOKIE_SECURE",
    "SESSION_COOKIE_SAMESITE",
    "DATABASE_URL",
    "SQLALCHEMY_TRACK_MODIFICATIONS",
    "ALLOWED_ORIGINS",
    "DISCORD_CLIENT_ID",
    "DISCORD_CLIENT_SECRET",
    "DISCORD_REDIRECT_URI",
    "GITHUB_CLIENT_ID",
    "GITHUB_CLIENT_SECRET",
    "GITHUB_REDIRECT_URI",
    "FORUM_ENABLED",
    "MAX_POST_LENGTH",
    "MAX_TOPIC_TITLE_LENGTH",
    "get_config_info",
]