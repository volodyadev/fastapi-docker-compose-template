#!/usr/bin/env bash

# Exit immediately if a command exits with a non-zero status.
set -e

# Activate our virtual environment for `poetry` here.
. /opt/pysetup/.venv/bin/activate

# And run alembic migrations
# alembic upgrade head

exec "$@"
