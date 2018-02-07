#!/bin/bash

if [[ $EUID -ne 0 ]]; then
   echo "This script must be run as root" 1>&2
   exit 1
fi

# decend into working directory
pushd build/squid3

# install ecap packages
sudo apt-get install squid-langpack
dpkg --install squid-common_3.5.23-5_all.deb
dpkg --install squid_3.5.23-5_amd64.deb
dpkg --install squidclient_3.5.23-5_amd64.deb

# and revert
popd
