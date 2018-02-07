#!/bin/bash

if [[ $EUID -eq 0 ]]; then
   echo "This script must NOT be run as root" 1>&2
   exit 1
fi

# drop squid build folder
rm -R build/squid

# we will be working in a subfolder make it
mkdir -p build/squid

# copy the patches to the working folder
cp rules.patch build/squid/rules.patch
cp control.patch build/squid/control.patch

# decend into working directory
pushd build/squid

# get squid from debian experimental
wget http://http.debian.net/debian/pool/main/s/squid/squid_4.0.23-1~exp8.dsc
wget http://http.debian.net/debian/pool/main/s/squid/squid_4.0.23.orig.tar.gz
wget http://http.debian.net/debian/pool/main/s/squid/squid_4.0.23-1~exp8.debian.tar.xz

# unpack the source package
dpkg-source -x squid_4.0.23-1~exp8.dsc

# modify configure options in debian/rules, add --enable-ssl --enable-ssl-crtd
patch squid-4.0.23/debian/rules < ../../rules.patch

# modify control file, downgrade debhelper and gnutls versions
patch squid-4.0.23/debian/control < ../../control.patch

# build the package
cd squid-4.0.23 && dpkg-buildpackage -rfakeroot -b

# and revert
popd
