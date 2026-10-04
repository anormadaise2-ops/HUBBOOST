import os

from dotenv import load_dotenv
from flask import Flask, jsonify
from flask_cors import CORS

from .services.database import db
from .services.oauth import init_oauth
from .routes import auth_bp, forum_bp, users_bp


# =========================================================
# HUBBOOST BACKEND
# =========================================================

BASE_DIR = os.path.dirname(os.path.abspath(__file__))
PROJECT_DIR = os.path.dirname(BASE_DIR)

# Charger le .env situé à la racine du projet
load_dotenv(os.path.join(PROJECT_DIR, ".env"))

app = Flask(__name__)


# =========================================================
# CONFIGURATION
# =========================================================

app.config["SECRET_KEY"] = os.getenv(
    "SECRET_KEY",
    "hubboost-development-secret-change-me",
)

database_url = os.getenv(
    "DATABASE_URL",
    "sqlite:///hubboost.db",
)

# Ancienne syntaxe PostgreSQL
if database_url.startswith("postgres://"):
    database_url = database_url.replace(
        "postgres://",
        "postgresql://",
        1,
    )

app.config["SQLALCHEMY_DATABASE_URI"] = database_url
app.config["SQLALCHEMY_TRACK_MODIFICATIONS"] = False


# =========================================================
# SESSION
# =========================================================

is_production = (
    os.getenv("FLASK_ENV", "").strip().lower()
    == "production"
)

app.config["SESSION_COOKIE_NAME"] = "hubboost_session"
app.config["SESSION_COOKIE_HTTPONLY"] = True
app.config["SESSION_COOKIE_SECURE"] = is_production
app.config["SESSION_COOKIE_SAMESITE"] = (
    "None" if is_production else "Lax"
)


# =========================================================
# DATABASE
# =========================================================

db.init_app(app)


# =========================================================
# CORS
# =========================================================

allowed_origins = [
    "http://127.0.0.1:8080",
    "http://localhost:8080",
    "http://127.0.0.1:5000",
    "http://localhost:5000",
    "https://anormadaise2-ops.github.io",
]

frontend_url = os.getenv("FRONTEND_URL", "").strip()

if frontend_url:
    frontend_url = frontend_url.rstrip("/")

    if frontend_url not in allowed_origins:
        allowed_origins.append(frontend_url)

CORS(
    app,
    resources={
        r"/api/*": {
            "origins": allowed_origins,
        }
    },
    supports_credentials=True,
)


# =========================================================
# OAUTH
# =========================================================

init_oauth(app)


# =========================================================
# ROUTES
# =========================================================

app.register_blueprint(auth_bp)
app.register_blueprint(forum_bp)
app.register_blueprint(users_bp)


# =========================================================
# DATABASE INITIALISATION
# =========================================================

with app.app_context():

    # Charger les modèles avant create_all()
    from .models.user import User
    from .models.forum import ForumPost, ForumReply

    db.create_all()

    print()
    print("============================================")
    print("           HUBBOOST DATABASE")
    print("============================================")
    print(f"Database: {database_url}")
    print("Tables: OK")
    print("============================================")
    print()


# =========================================================
# ROUTE PRINCIPALE
# =========================================================

@app.get("/")
def home():
    return jsonify({
        "success": True,
        "service": "HUBBOOST Backend",
        "version": "1.0.0",
        "status": "online",
    })


# =========================================================
# HEALTH CHECK
# =========================================================

@app.get("/api/health")
def health():
    return jsonify({
        "success": True,
        "status": "online",
        "service": "HUBBOOST Backend",
    })


# =========================================================
# API INFO
# =========================================================

@app.get("/api")
def api_info():
    return jsonify({
        "success": True,
        "name": "HUBBOOST API",
        "version": "1.0.0",
        "endpoints": {
            "health": "/api/health",
            "auth": "/api/auth",
            "forum": "/api/forum",
            "users": "/api/users",
        },
    })


# =========================================================
# ERREUR 404
# =========================================================

@app.errorhandler(404)
def not_found(error):
    return jsonify({
        "success": False,
        "error": "Route introuvable.",
    }), 404


# =========================================================
# ERREUR 500
# =========================================================

@app.errorhandler(500)
def internal_error(error):
    db.session.rollback()

    return jsonify({
        "success": False,
        "error": "Erreur interne du serveur.",
    }), 500


# =========================================================
# LANCEMENT LOCAL
# =========================================================

if __name__ == "__main__":

    host = os.getenv(
        "HOST",
        "127.0.0.1",
    )

    try:
        port = int(
            os.getenv(
                "PORT",
                "5000",
            )
        )
    except (TypeError, ValueError):
        port = 5000

    print()
    print("============================================")
    print("             HUBBOOST BACKEND")
    print("============================================")
    print(f"Python:  {os.sys.version.split()[0]}")
    print(f"Local:   http://{host}:{port}")
    print(f"Health:  http://{host}:{port}/api/health")
    print(f"API:     http://{host}:{port}/api")
    print("============================================")
    print()

    app.run(
        host=host,
        port=port,
        debug=True,
    )