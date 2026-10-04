# -*- coding: utf-8 -*-

import os

from flask import Flask, jsonify
from dotenv import load_dotenv

from auth import register_auth


load_dotenv()


app = Flask(__name__)

app.config["SECRET_KEY"] = os.getenv(
    "SECRET_KEY",
    "dev-secret-change-me"
)

app.config["SESSION_COOKIE_HTTPONLY"] = True
app.config["SESSION_COOKIE_SAMESITE"] = "Lax"


# ============================================================
# AUTH
# ============================================================

register_auth(app)


# ============================================================
# HEALTH
# ============================================================

@app.get("/api/health")
def health():
    return jsonify({
        "success": True,
        "app": "HUBBOOST",
        "status": "online"
    })


# ============================================================
# MAIN
# ============================================================

if __name__ == "__main__":
    print("Demarrage de HUBBOOST...")

    app.run(
        host="127.0.0.1",
        port=5000,
        debug=True
    )