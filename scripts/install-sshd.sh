#!/usr/bin/env bash

echo '-- Install sshd...'
apt-get -y install openssh-server
echo "UseDNS no" >> /etc/ssh/sshd_config
echo "GSSAPIAuthentication no" >> /etc/ssh/sshd_config
