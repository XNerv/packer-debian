packer build standard-debian-8.8.0-amd64-virtualbox.json
packer build standard-debian-8.8.0-i386-virtualbox.json

packer build desktop-debian-8.8.0-amd64-virtualbox.json
packer build desktop-debian-8.8.0-i386-virtualbox.json

rmdir /s /q packer_cache