"""
HUBBOOST - API Routes
"""

from .auth import auth_bp
from .forum import forum_bp
from .users import users_bp

__all__ = [
    "auth_bp",
    "forum_bp",
    "users_bp",
]