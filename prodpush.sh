#!/bin/bash

set -o allexport; source .env; set +o allexport

echo "Deleting source directory …"
sudo rm -R /$SOURCE
# git checkout master
hugo --environment production
rsync -rtzzP --del $SOURCE $DESTINATION
