"""
HUBBOOST
Security Utilities

Fonctions de sécurité et de validation utilisées par le backend.
"""

import re
from html import escape
from typing import Any


# ============================================================
# LIMITES
# ============================================================

MAX_USERNAME_LENGTH = 50
MAX_EMAIL_LENGTH = 255
MAX_TITLE_LENGTH = 120
MAX_CONTENT_LENGTH = 10000


ALLOWED_FORUM_CATEGORIES = {
    "general",
    "gaming",
    "windows",
    "hardware",
    "help",
    "showcase",
}


# ============================================================
# NETTOYAGE TEXTE
# ============================================================

def clean_text(
    value: Any,
    max_length: int | None = None,
) -> str:
    """
    Nettoie une valeur destinée à être utilisée comme texte.

    - Convertit en chaîne.
    - Supprime les espaces inutiles.
    - Supprime les caractères de contrôle.
    - Limite la longueur.
    """

    if value is None:
        return ""

    text = str(value)

    # Supprime les caractères de contrôle dangereux,
    # tout en conservant les retours à la ligne et tabulations.
    text = "".join(
        char
        for char in text
        if char in "\n\t" or ord(char) >= 32
    )

    text = text.strip()

    if max_length is not None:
        text = text[:max_length]

    return text


def escape_html(value: Any) -> str:
    """
    Échappe les caractères HTML.

    Utile si une valeur utilisateur doit être affichée
    dans un contexte HTML.
    """

    return escape(
        clean_text(value),
        quote=True,
    )


# ============================================================
# USERNAME
# ============================================================

def is_valid_username(username: Any) -> bool:
    """
    Vérifie un username HUBBOOST.

    Autorise :
    - lettres
    - chiffres
    - underscore
    - tiret

    Longueur : 3 à 50 caractères.
    """

    username = clean_text(
        username,
        MAX_USERNAME_LENGTH,
    )

    if not 3 <= len(username) <= MAX_USERNAME_LENGTH:
        return False

    return bool(
        re.fullmatch(
            r"[A-Za-z0-9_-]+",
            username,
        )
    )


# ============================================================
# EMAIL
# ============================================================

def is_valid_email(email: Any) -> bool:
    """
    Validation basique d'une adresse email.
    """

    email = clean_text(
        email,
        MAX_EMAIL_LENGTH,
    ).lower()

    if not email:
        return False

    if len(email) > MAX_EMAIL_LENGTH:
        return False

    return bool(
        re.fullmatch(
            r"^[A-Za-z0-9.!#$%&'*+/=?^_`{|}~-]+"
            r"@[A-Za-z0-9-]+"
            r"(?:\.[A-Za-z0-9-]+)+$",
            email,
        )
    )


# ============================================================
# FORUM
# ============================================================

def is_valid_forum_category(category: Any) -> bool:
    """
    Vérifie qu'une catégorie de forum existe.
    """

    category = clean_text(
        category,
        30,
    ).lower()

    return category in ALLOWED_FORUM_CATEGORIES


def validate_topic_title(title: Any) -> tuple[bool, str]:
    """
    Valide le titre d'un sujet.
    """

    title = clean_text(
        title,
        MAX_TITLE_LENGTH,
    )

    if not title:
        return False, "Le titre est obligatoire."

    if len(title) < 3:
        return False, "Le titre doit contenir au moins 3 caractères."

    if len(title) > MAX_TITLE_LENGTH:
        return False, (
            f"Le titre ne peut pas dépasser "
            f"{MAX_TITLE_LENGTH} caractères."
        )

    return True, title


def validate_forum_content(content: Any) -> tuple[bool, str]:
    """
    Valide le contenu d'un sujet ou d'une réponse.
    """

    content = clean_text(
        content,
        MAX_CONTENT_LENGTH,
    )

    if not content:
        return False, "Le contenu est obligatoire."

    if len(content) < 1:
        return False, "Le contenu est vide."

    if len(content) > MAX_CONTENT_LENGTH:
        return False, (
            f"Le contenu ne peut pas dépasser "
            f"{MAX_CONTENT_LENGTH} caractères."
        )

    return True, content


# ============================================================
# IDENTIFIANTS
# ============================================================

def is_valid_id(value: Any) -> bool:
    """
    Vérifie qu'une valeur peut représenter un ID positif.
    """

    try:
        number = int(value)
    except (TypeError, ValueError):
        return False

    return number > 0


# ============================================================
# PAGINATION
# ============================================================

def safe_page(
    value: Any,
    default: int = 1,
    maximum: int = 100000,
) -> int:
    """
    Convertit une page en entier sûr.
    """

    try:
        page = int(value)
    except (TypeError, ValueError):
        return default

    return max(1, min(page, maximum))


def safe_limit(
    value: Any,
    default: int = 20,
    maximum: int = 100,
) -> int:
    """
    Convertit une limite de résultats en entier sûr.
    """

    try:
        limit = int(value)
    except (TypeError, ValueError):
        return default

    return max(1, min(limit, maximum))


# ============================================================
# RECHERCHE
# ============================================================

def clean_search_query(
    query: Any,
    max_length: int = 100,
) -> str:
    """
    Nettoie une recherche utilisateur.
    """

    return clean_text(
        query,
        max_length,
    )


# ============================================================
# VALIDATION GÉNÉRIQUE
# ============================================================

def is_safe_text(
    value: Any,
    maximum: int = 10000,
) -> bool:
    """
    Vérifie qu'une valeur texte est raisonnablement sûre.
    """

    if value is None:
        return False

    try:
        text = str(value)
    except Exception:
        return False

    if len(text) > maximum:
        return False

    return all(
        char in "\n\t" or ord(char) >= 32
        for char in text
    )


__all__ = [
    "MAX_USERNAME_LENGTH",
    "MAX_EMAIL_LENGTH",
    "MAX_TITLE_LENGTH",
    "MAX_CONTENT_LENGTH",
    "ALLOWED_FORUM_CATEGORIES",
    "clean_text",
    "escape_html",
    "is_valid_username",
    "is_valid_email",
    "is_valid_forum_category",
    "validate_topic_title",
    "validate_forum_content",
    "is_valid_id",
    "safe_page",
    "safe_limit",
    "clean_search_query",
    "is_safe_text",
]