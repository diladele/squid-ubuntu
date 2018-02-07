#!/bin/bash

if [[ $EUID -eq 0 ]]; then
   echo "This script must NOT be run as root" 1>&2
   exit 1
fi

# drop ecap build folder
rm -R build/libecap

# we will be working in a subfolder make it
mkdir -p build/libecap

# decend into working directory
pushd build/libecap

# get libecap from debian stretch
wget http://http.debian.net/debian/pool/main/libe/libecap/libecap_1.0.1-3.2.dsc
wget http://http.debian.net/debian/pool/main/libe/libecap/libecap_1.0.1.orig.tar.gz
wget http://http.debian.net/debian/pool/main/libe/libecap/libecap_1.0.1-3.2.debian.tar.xz

# unpack the source package
dpkg-source -x libecap_1.0.1-3.2.dsc

# build the package
cd libecap-1.0.1 && dpkg-buildpackage -rfakeroot -b

# and revert
popd
