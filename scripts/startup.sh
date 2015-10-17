#!/usr/bin/env bash

echo '-- Configure sources.list...'
cp /tmp/files/sources.list /etc/apt/sources.list
apt-get update

echo '-- Install base packages...'
apt-get -y install sudo curl wget facter