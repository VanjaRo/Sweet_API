#!/bin/sh


flask db init && flask db migrate && flask db upgrade

gunicorn --workers 4 --bind 0.0.0.0:8080 main:app