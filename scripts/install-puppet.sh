#!/usr/bin/env bash

echo '-- Register Puppet package...'
if [ $(facter lsbdistcodename) = 'wheezy' ] ; then
    # Prepare puppetlabs repo
    wget http://apt.puppetlabs.com/puppetlabs-release-wheezy.deb
    dpkg -i puppetlabs-release-wheezy.deb
    rm -f puppetlabs-release-wheezy.deb

elif [ $(facter lsbdistcodename) = 'jessie' ] ; then
    # Prepare puppetlabs repo
    wget http://apt.puppetlabs.com/puppetlabs-release-jessie.deb
    dpkg -i puppetlabs-release-jessie.deb
    rm -f puppetlabs-release-jessie.deb
fi

apt-get -y update

echo '-- Install Puppet...'
apt-get install -y puppet