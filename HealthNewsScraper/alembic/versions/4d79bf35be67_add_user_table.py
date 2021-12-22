"""add user table

Revision ID: 4d79bf35be67
Revises: 8f9dff57fb9c
Create Date: 2021-12-17 18:24:23.406947

"""
from alembic import op
import sqlalchemy as sa


# revision identifiers, used by Alembic.
revision = '4d79bf35be67'
down_revision = '8f9dff57fb9c'
branch_labels = None
depends_on = None


def upgrade():
    op.create_table("users",
                        sa.Column('id', sa.Integer(), nullable=False),
                        sa.Column('email', sa.String(), nullable=False),
                        sa.Column('password', sa.String(),nullable=False),
                        sa.Column('created_at', sa.TIMESTAMP(timezone=True),
                                    server_default=sa.text('now()'), nullable=False),
                        sa.PrimaryKeyConstraint('id'),
                        sa.UniqueConstraint('email'))
    pass


def downgrade():
    op.drop_table("users")
    pass
