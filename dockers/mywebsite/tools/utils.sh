#!/bin/bash

# Colors
RED='\033[0;31m'
GREEN='\033[0;32m'
BLUE='\033[0;34m'
NC='\033[0m'

# Make Migrations
python3 manage.py makemigrations
python3 manage.py migrate

Create the superuser
if [ -z "$(python manage.py shell -c 'from django.contrib.auth import get_user_model; User = get_user_model(); print(User.objects.filter(username="admin").exists())')" ]; then
  python manage.py shell -c "from django.contrib.auth.models import User; User.objects.create_superuser('admin', 'admin@example.com', ${DJANGO_ADMIN_PASSWORD})"

fi

# Run the development server
exec "$@"