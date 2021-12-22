"""redoing the add last columns to characters table

Revision ID: 84670419610f
Revises: 5410ca59e07f
Create Date: 2021-12-21 14:33:16.768202

"""
from alembic import op
import sqlalchemy as sa


# revision identifiers, used by Alembic.
revision = '84670419610f'
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
