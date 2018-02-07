#!/bin/bash

if [[ $EUID -ne 0 ]]; then
   echo "This script must be run as root" 1>&2
   exit 1
fi

# decend into working directory
pushd build/squid

# install squid packages
sudo apt-get install squid-langpack
dpkg --install squid-common_4.0.23-1~exp8_all.deb
dpkg --install squid_4.0.23-1~exp8_amd64.deb
dpkg --install squidclient_4.0.23-1~exp8_amd64.deb

# and revert
popd
