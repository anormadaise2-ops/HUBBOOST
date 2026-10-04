import os

from authlib.integrations.flask_client import OAuth


# ============================================================
# INSTANCE OAUTH UNIQUE
# ============================================================

oauth = OAuth()


# ============================================================
# UTILITAIRES
# ============================================================

def get_env(name, default=None):
    """Récupère une variable d'environnement proprement."""
    value = os.getenv(name)

    if value is None:
        return default

    return value.strip()


# ============================================================
# INITIALISATION
# ============================================================

def init_oauth(app):
    """
    Initialise Authlib avec Flask puis configure
    Discord et GitHub.
    """

    # IMPORTANT :
    # Cette instance est celle qui sera ensuite utilisée
    # dans backend/routes/auth.py
    oauth.init_app(app)

    print()
    print("============================================")
    print("              HUBBOOST OAUTH")
    print("============================================")

    # ========================================================
    # DISCORD
    # ========================================================

    discord_client_id = get_env("DISCORD_CLIENT_ID")
    discord_client_secret = get_env("DISCORD_CLIENT_SECRET")
    discord_redirect_uri = get_env("DISCORD_REDIRECT_URI")

    if discord_client_id and discord_client_secret:

        discord_config = {
            "name": "discord",
            "client_id": discord_client_id,
            "client_secret": discord_client_secret,

            "access_token_url":
                "https://discord.com/api/oauth2/token",

            "authorize_url":
                "https://discord.com/api/oauth2/authorize",

            "api_base_url":
                "https://discord.com/api/",

            "client_kwargs": {
                "scope": "identify email"
            },
        }

        if discord_redirect_uri:
            discord_config["authorize_params"] = {
                "redirect_uri": discord_redirect_uri
            }

        oauth.register(**discord_config)

        print("[OAUTH] Discord : OK")

    else:

        print("[OAUTH] Discord : NON CONFIGURE")

    # ========================================================
    # GITHUB
    # ========================================================

    github_client_id = get_env("GITHUB_CLIENT_ID")
    github_client_secret = get_env("GITHUB_CLIENT_SECRET")
    github_redirect_uri = get_env("GITHUB_REDIRECT_URI")

    if github_client_id and github_client_secret:

        github_config = {
            "name": "github",
            "client_id": github_client_id,
            "client_secret": github_client_secret,

            "access_token_url":
                "https://github.com/login/oauth/access_token",

            "authorize_url":
                "https://github.com/login/oauth/authorize",

            "api_base_url":
                "https://api.github.com/",

            "client_kwargs": {
                "scope": "read:user user:email"
            },
        }

        if github_redirect_uri:
            github_config["authorize_params"] = {
                "redirect_uri": github_redirect_uri
            }

        oauth.register(**github_config)

        print("[OAUTH] GitHub : OK")

    else:

        print("[OAUTH] GitHub : NON CONFIGURE")

    print("============================================")
    print()

    return oauth


# ============================================================
# STATUT
# ============================================================

def discord_enabled():
    return bool(
        get_env("DISCORD_CLIENT_ID")
        and get_env("DISCORD_CLIENT_SECRET")
    )


def github_enabled():
    return bool(
        get_env("GITHUB_CLIENT_ID")
        and get_env("GITHUB_CLIENT_SECRET")
    )


def oauth_status():
    return {
        "discord": discord_enabled(),
        "github": github_enabled(),
    }


# ============================================================
# EXPORTS
# ============================================================

__all__ = [
    "oauth",
    "init_oauth",
    "discord_enabled",
    "github_enabled",
    "oauth_status",
]