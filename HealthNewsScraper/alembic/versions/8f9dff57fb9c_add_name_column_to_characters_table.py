"""add name column to characters table

Revision ID: 8f9dff57fb9c
Revises: a277f3e80aee
Create Date: 2021-12-17 18:15:27.729706

"""
from alembic import op
import sqlalchemy as sa


# revision identifiers, used by Alembic.
revision = '8f9dff57fb9c'
down_revision = 'a277f3e80aee'
branch_labels = None
depends_on = None


def upgrade():
    op.add_column("characters", sa.Column('name', sa.String(), nullable=False))
    pass


def downgrade():
    op.drop_column("characters", "name")
    pass
