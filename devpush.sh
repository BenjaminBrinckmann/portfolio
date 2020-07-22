#!/bin/bash

set -o allexport; source .env; set +o allexport

hugo --environment $DEVSOURCE
rsync -rtzzP $DEVSOURCE/ $USER@$DEVDESTINATION