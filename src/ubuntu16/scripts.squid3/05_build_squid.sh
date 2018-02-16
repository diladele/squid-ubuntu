#!/bin/bash

if [[ $EUID -eq 0 ]]; then
   echo "This script must NOT be run as root" 1>&2
   exit 1
fi

# drop squid3 build folder
rm -R build/squid3

# we will be working in a subfolder make it
mkdir -p build/squid3

# copy the patches to the working folder
cp rules.patch build/squid3/rules.patch
cp control.patch build/squid3/control.patch

# decend into working directory
pushd build/squid3

# get squid3 from debian stretch
wget http://http.debian.net/debian/pool/main/s/squid3/squid3_3.5.27-1.dsc
wget http://http.debian.net/debian/pool/main/s/squid3/squid3_3.5.27.orig.tar.gz
wget http://http.debian.net/debian/pool/main/s/squid3/squid3_3.5.27-1.debian.tar.xz

# unpack the source package
dpkg-source -x squid3_3.5.27-1.dsc

# modify configure options in debian/rules, add --enable-ssl --enable-ssl-crtd
patch squid3-3.5.27/debian/rules < ../../rules.patch

# modify control file, drop explicitly specified debhelper version
patch squid3-3.5.27/debian/control < ../../control.patch

# build the package
cd squid3-3.5.27 && dpkg-buildpackage -rfakeroot -b

# and revert
popd
