#!/bin/bash

# Colors
RED='\033[0;31m'
GREEN='\033[0;32m'
BLUE='\033[0;34m'
NC='\033[0m'

# Make Migrations
python3 manage.py makemigrations
python3 manage.py migrate

# Crear superusuario si no existe
if [ -z "$(python manage.py shell -c 'from django.contrib.auth import get_user_model; User = get_user_model(); print(User.objects.filter(username="admin").exists())')" ]; then
  python manage.py createsuperuser --noinput --username admin --email admin@example.com
fi

# Ejecutar el servidor de desarrollo
exec "$@"

# Run server
# python3 manage.py runserver