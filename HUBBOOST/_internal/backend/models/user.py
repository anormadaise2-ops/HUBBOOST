from datetime import datetime

from ..services.database import db


class User(db.Model):
    __tablename__ = "users"

    id = db.Column(
        db.Integer,
        primary_key=True
    )

    username = db.Column(
        db.String(50),
        unique=True,
        nullable=False,
        index=True
    )

    email = db.Column(
        db.String(255),
        unique=True,
        nullable=True,
        index=True
    )

    avatar_url = db.Column(
        db.String(500),
        nullable=True
    )

    provider = db.Column(
        db.String(20),
        nullable=False
    )

    provider_id = db.Column(
        db.String(255),
        nullable=False
    )

    created_at = db.Column(
        db.DateTime,
        default=datetime.utcnow,
        nullable=False
    )

    updated_at = db.Column(
        db.DateTime,
        default=datetime.utcnow,
        onupdate=datetime.utcnow,
        nullable=False
    )

    forum_posts = db.relationship(
        "ForumPost",
        backref="author",
        lazy=True,
        foreign_keys="ForumPost.author_id"
    )

    forum_replies = db.relationship(
        "ForumReply",
        backref="author",
        lazy=True,
        foreign_keys="ForumReply.author_id"
    )

    __table_args__ = (
        db.UniqueConstraint(
            "provider",
            "provider_id",
            name="unique_provider_account"
        ),
    )

    def to_dict(self):
        return {
            "id": self.id,
            "username": self.username,
            "email": self.email,
            "avatar_url": self.avatar_url,
            "provider": self.provider,
            "created_at": self.created_at.isoformat(),
            "updated_at": self.updated_at.isoformat()
        }

    def __repr__(self):
        return f"<User {self.username}>"