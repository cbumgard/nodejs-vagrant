#!/bin/bash

# Git config
su vagrant -c 'git config --global color.ui true'

# Default editor: Vim!
su vagrant -c 'git config --global core.editor "vim"'

echo "Run 'vagrant ssh' then set your git config manually, e.g.:"
echo "ssh-keygen -t rsa"
echo "(Copy the contents of ~/.ssh/id_rsa.pub into your GitHub account: https://github.com/settings/ssh)"
echo "git config --global user.name '<your name>'"
echo "git config --global user.email <your email>"
