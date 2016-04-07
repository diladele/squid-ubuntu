#!/bin/bash

if [[ $EUID -ne 0 ]]; then
   echo "This script must be run as root" 1>&2
   exit 1
fi

# install build tools
apt-get -y install devscripts build-essential fakeroot debhelper dh-autoreconf cdbs

# install build dependences for squid
apt-get -y build-dep libecap
apt-get -y build-dep squid3

# uninstall libecap2 as we will be using the libecap3
apt-get -y --purge remove libecap2-dev libecap2

# install additional packages for new squid
apt-get -y install nettle-dev libgnutls28-dev libssl-dev libdbi-perl