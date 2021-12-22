"""add foreign key to character table

Revision ID: 844df70594cc
Revises: 4d79bf35be67
Create Date: 2021-12-17 18:47:59.110426

"""
from alembic import op
import sqlalchemy as sa


# revision identifiers, used by Alembic.
revision = '844df70594cc'
down_revision = '4d79bf35be67'
branch_labels = None
depends_on = None


def upgrade():
    op.add_column('characters', sa.Column('owner_id', sa.Integer(), nullable=False))
    op.create_foreign_key("characters_users_fk", source_table="characters", referent_table="users",
                                local_cols=['owner_id'], remote_cols=['id'], ondelete="CASCADE")
    pass


def downgrade():
    op.drop_constraint("characters_users_fk", table_name="characters")
    op.drop_column("characters", "owner_id")
    pass
