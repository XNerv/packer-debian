#!/usr/bin/env bash

echo '-- Install Chef...'
cd /tmp
curl -L https://www.opscode.com/chef/install.sh | bash

echo '-- Cleanup Chef...'
rm -f /tmp/chef*deb
