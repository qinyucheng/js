#!/bin/bash

#
# Set up Scott's favorite prompt.
#
echo "export PS1='[\u@\h:\w]\n\$ '" >> ~/.bashrc

#
# Set up case-insensitive autocompletion.
#
echo "shopt -s nocaseglob" >> ~/.bashrc
echo "set completion-ignore-case On" > ~/.inputrc

#
# Install the requisite Ubuntu packages.
#
sudo apt-get update
sudo apt-get -y install git libyaml-dev libxslt-dev libxml2-dev libsqlite3-dev nodejs-dev

#
# Install RVM.
#
gpg --keyserver hkp://keys.gnupg.net --recv-keys D39DC0E3
\curl -sSL https://get.rvm.io | bash -s stable

#
# Use RVM to install Ruby 2.2.0.
#
~/.rvm/bin/rvm --quiet-curl install ruby-2.2.0

#
# Make a symbolic link to the synced directory.
#
ln -s /vagrant ~/workspace
