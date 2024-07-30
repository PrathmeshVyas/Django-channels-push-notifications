#!/bin/ash

#collect static files

echo "Collect static files"
python manage.py collectstatic --noinput

#Apply db migrations
python manage.py makemigrations
python manage.py migrate

# execute
exec "$@"