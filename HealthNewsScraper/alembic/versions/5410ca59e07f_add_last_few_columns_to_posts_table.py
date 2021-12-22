"""add last few columns to posts table

Revision ID: 5410ca59e07f
Revises: 844df70594cc
Create Date: 2021-12-21 14:21:03.560346

"""
from alembic import op
import sqlalchemy as sa


# revision identifiers, used by Alembic.
revision = '5410ca59e07f'
down_revision = '844df70594cc'
branch_labels = None
depends_on = None


def upgrade():
    op.add_column('characters', sa.Column('published', sa.Boolean(),
                    nullable=False, server_default='TRUE'),
            )
    op.add_column('characters', sa.Column('created_at', sa.TIMESTAMP(timezone=True),
                    nullable=False, server_default=sa.text('NOW()')),)
    pass


def downgrade():
    op.drop_column('characters', 'published')
    op.drop_column('characters', 'created_at')
    pass
