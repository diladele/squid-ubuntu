#!/bin/bash

if [[ $EUID -ne 0 ]]; then
   echo "This script must be run as root" 1>&2
   exit 1
fi

# some packages are in universe, so enable it
add-apt-repository universe

# install build tools
apt-get -y install devscripts build-essential fakeroot debhelper dh-autoreconf dh-apparmor cdbs

# install additional header packages for squid 5
apt-get -y install \
    libcppunit-dev \
    libsasl2-dev \
    libxml2-dev \
    libkrb5-dev \
    libdb-dev \
    libnetfilter-conntrack-dev \
    libexpat1-dev \
    libcap-dev \
    libldap2-dev \
    libpam0g-dev \
    libgnutls28-dev \
    libssl-dev \
    libdbi-perl \
    libecap3 \
    libecap3-dev \
    libsystemd-dev \
    libtdb-dev
