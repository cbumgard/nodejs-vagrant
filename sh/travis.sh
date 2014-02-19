#!/bin/bash

# Travis-CI toolbelt: install ruby1.9.1-dev package & Travis gem
apt-get remove -y ruby1.9.1
apt-get install -y ruby1.9.1-dev
gem install travis --no-rdoc --no-ri

echo "Run the following commands to login:"
echo "travis login"
