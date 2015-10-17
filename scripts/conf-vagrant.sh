#!/usr/bin/env bash

echo '-- Set up password-less sudo for user vagrant...'
echo 'vagrant ALL=(ALL) NOPASSWD:ALL' > /etc/sudoers.d/vagrant
chmod 440 /etc/sudoers.d/vagrant

# no tty
echo "Defaults !requiretty" >> /etc/sudoers

echo '-- Add public key to vagrant user...'
homedir=$(su - vagrant -c 'echo $HOME')
mkdir -p $homedir/.ssh
curl -L 'https://raw.github.com/mitchellh/vagrant/master/keys/vagrant.pub' -o $homedir/.ssh/authorized_keys
chown -Rf vagrant. $homedir/.ssh
chmod 700 $homedir/.ssh
chmod 600 $homedir/.ssh/authorized_keys

