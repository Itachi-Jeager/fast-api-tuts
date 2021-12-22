"""create posts table

Revision ID: a277f3e80aee
Revises: 
Create Date: 2021-12-17 16:33:52.681061

"""
from alembic import op
import sqlalchemy as sa


# revision identifiers, used by Alembic.
revision = 'a277f3e80aee'
down_revision = None
branch_labels = None
depends_on = None


def upgrade():
    op.create_table('characters', sa.Column('id', sa.Integer(), nullable=False, primary_key=True),
                    sa.Column('title', sa.String(), nullable=False))
    pass


def downgrade():
    op.drop_table('characters')
    pass
