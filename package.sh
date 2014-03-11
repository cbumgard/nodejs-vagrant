#!/bin/bash
vagrant package --output nodejs.box
#vagrant package --vagrantfile ./Vagrantfile --include ./sh/core.sh,./sh/heroku.sh,./sh/nodejs.sh,./sh/redis.sh,./sh/travis.sh,./sh/github.sh,./sh/mongodb.sh,./sh/provision.sh,./sh/repair-mac.sh,./sh/vim.sh --output nodejs.box
