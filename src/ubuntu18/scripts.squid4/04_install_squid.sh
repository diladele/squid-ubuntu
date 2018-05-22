#!/bin/bash

if [[ $EUID -ne 0 ]]; then
   echo "This script must be run as root" 1>&2
   exit 1
fi

# decend into working directory
pushd build/squid

# set squid version
source squid.ver
#SQUID_VER="4.0.24"
#SQUID_PKG="${SQUID_VER}-1~exp16"

# install squid packages
sudo apt-get install squid-langpack
dpkg --install squid-common_${SQUID_PKG}_all.deb
dpkg --install squid_${SQUID_PKG}_amd64.deb
dpkg --install squidclient_${SQUID_PKG}_amd64.deb

# and revert
popd
