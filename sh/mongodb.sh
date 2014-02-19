#!/bin/bash

# Update apt-get to get 10gen stable packages
apt-key adv --keyserver keyserver.ubuntu.com --recv 7F0CEB10
echo 'deb http://downloads-distro.mongodb.org/repo/ubuntu-upstart dist 10gen' | tee /etc/apt/sources.list.d/10gen.list
apt-get update
# Install specific stable version
apt-get install -y mongodb-10gen=2.4.4
# Pin to the exact version above, so it's not auto upgraded by apt-get
echo "mongodb-10gen hold" | dpkg --set-selections
