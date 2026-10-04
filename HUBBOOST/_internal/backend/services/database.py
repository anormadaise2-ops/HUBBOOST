"""
HUBBOOST
Database Service
"""

from flask_sqlalchemy import SQLAlchemy


# ============================================================
# INSTANCE DATABASE
# ============================================================

db = SQLAlchemy()


# ============================================================
# INITIALISATION
# ============================================================

def init_database(app):
    """
    Initialise la base de données Flask.
    """

    db.init_app(app)

    return db


# ============================================================
# CREATION DES TABLES
# ============================================================

def create_tables(app):
    """
    Crée toutes les tables définies dans les modèles.
    """

    try:
        with app.app_context():
            db.create_all()

        print("[DATABASE] Tables OK")
        return True

    except Exception as error:
        print(f"[DATABASE] Erreur création tables : {error}")
        return False


# ============================================================
# TEST
# ============================================================

def test_database(app):
    """
    Teste la connexion à la base de données.
    """

    try:
        with app.app_context():
            connection = db.engine.connect()
            connection.close()

        print("[DATABASE] Connexion OK")
        return True

    except Exception as error:
        print(f"[DATABASE] Connexion impossible : {error}")
        return False


# ============================================================
# DATABASE READY
# ============================================================

def database_is_ready(app):
    """
    Vérifie si la database est disponible.
    """

    try:
        with app.app_context():
            connection = db.engine.connect()
            connection.close()

        return True

    except Exception:
        return False


# ============================================================
# INFORMATIONS
# ============================================================

def get_database_info(app):
    """
    Retourne les informations principales de la database.
    """

    try:
        with app.app_context():

            return {
                "success": True,
                "connected": True,
                "database": app.config.get(
                    "SQLALCHEMY_DATABASE_URI",
                    ""
                ),
            }

    except Exception as error:

        return {
            "success": False,
            "connected": False,
            "database": app.config.get(
                "SQLALCHEMY_DATABASE_URI",
                ""
            ),
            "error": str(error),
        }


# ============================================================
# RESET
# ============================================================

def reset_database(app):
    """
    Supprime puis recrée toutes les tables.

    ATTENTION :
    Cette fonction supprime les données existantes.
    """

    try:
        with app.app_context():
            db.drop_all()
            db.create_all()

        print("[DATABASE] Database réinitialisée")
        return True

    except Exception as error:
        print(f"[DATABASE] Erreur reset : {error}")
        return False


# ============================================================
# FERMETURE
# ============================================================

def close_database():
    """
    Ferme la session SQLAlchemy.
    """

    try:
        db.session.remove()
        return True

    except Exception as error:
        print(f"[DATABASE] Erreur fermeture : {error}")
        return False


# ============================================================
# EXPORT
# ============================================================

__all__ = [
    "db",
    "init_database",
    "create_tables",
    "test_database",
    "database_is_ready",
    "get_database_info",
    "reset_database",
    "close_database",
]