#!/bin/bash
if [[ $EUID -ne 0 ]]; then
   echo "This script must be run as root" 1>&2
   exit 1
fi

# install build tools
apt-get -y install devscripts build-essential fakeroot cdbs debhelper dh-autoreconf ed

# install additional packages for new squid
apt-get -y install \
    libsasl2-dev \
    libxml2-dev \
    libdb-dev \
    libkrb5-dev \
    nettle-dev \
    libnetfilter-conntrack-dev \
    libpam0g-dev \
    libldap2-dev \
    libcppunit-dev \
    libexpat1-dev \
    libcap2-dev \
    libltdl-dev \
    libssl-dev \
    libdbi-perl
