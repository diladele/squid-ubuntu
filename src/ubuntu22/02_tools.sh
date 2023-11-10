#!/bin/bash

if [[ $EUID -ne 0 ]]; then
   echo "This script must be run as root" 1>&2
   exit 1
fi

# install build tools
apt-get -y install dpkg-dev dh-apparmor debhelper ed logrotate

# install additional header packages for squid 6
apt-get -y install \
   libldap2-dev \
   libsasl2-dev \
   libssl-dev \
   libtdb-dev \
   libxml2-dev \
   libnetfilter-conntrack-dev \
   libsystemd-dev \
   libpam0g-dev \
   libcap2-dev \
   libkrb5-dev \
   libcppunit-dev \
   libexpat1-dev \
   libgnutls28-dev \
   libltdl-dev \
   libecap3-dev \
   libdbi-perl