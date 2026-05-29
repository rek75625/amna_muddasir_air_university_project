#!/bin/sh

export FLASK_APP=flasky.py
export FLASK_CONFIG=production

flask deploy

exec gunicorn --bind 0.0.0.0:5000 "flasky:app"