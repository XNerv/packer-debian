#!/usr/bin/env bash

echo '-- Cleanup apt-get cache...'
apt-get clean

echo '-- Cleanup DHCP leases...'
rm -f /var/lib/dhcp3/*
rm -f /var/lib/dhcp/*

# Make sure Udev doesn't block our network.
echo '-- Cleanup udev network rules...'
if [ -e "/etc/udev/rules.d/z25_persistent-net.rules" ]; then
  rm /etc/udev/rules.d/z25_persistent-net.rules
fi
if [ -e "/etc/udev/rules.d/70-persistent-net.rules" ]; then
  rm /etc/udev/rules.d/70-persistent-net.rules
fi
if [ -e "/etc/udev/rules.d/75-persistent-net-generator.rules" ]; then
  rm /etc/udev/rules.d/75-persistent-net-generator.rules && touch /etc/udev/rules.d/75-persistent-net-generator.rules
fi

echo "pre-up sleep 2" >> /etc/network/interfaces

echo '-- Zero out the free space to save space in the final image...'
dd if=/dev/zero of=/EMPTY bs=1M
rm -f /EMPTY

# sync data to disk (fix packer)
sync
