#!/bin/bash
set -e
HOST="sh054.asoshared.com"
DEST="public_html/drone/"
echo "Deploying to $HOST:$DEST ..."
rsync -avz --exclude='.git' --exclude='.gitignore' --exclude='.claude' --exclude='deploy.sh' \
  index.html "$HOST:$DEST"
echo "Done! Live at https://www.pico.org/drone/"
