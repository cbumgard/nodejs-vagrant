#!/bin/bash

# Heroku toolbelt:

wget -qO- https://toolbelt.heroku.com/install-ubuntu.sh | sh

echo "Run the following commands to finish setting up Heroku:"
echo "heroku login"
echo "heroku keys:add"
echo "heroku git:remote -a heroku"
