#!/bin/bash

if [[ $EUID -eq 0 ]]; then
   echo "This script must NOT be run as root" 1>&2
   exit 1
fi

# drop ecap build folder
rm -R build/libecap

# we will be working in a subfolder make it
mkdir -p build/libecap

# copy the patch to the working folder
cp control.patch build/libecap/control.patch

# decend into working directory
pushd build/libecap

# get libecap from debian stretch
wget http://http.debian.net/debian/pool/main/libe/libecap/libecap_1.0.1-3.dsc
wget http://http.debian.net/debian/pool/main/libe/libecap/libecap_1.0.1.orig.tar.gz
wget http://http.debian.net/debian/pool/main/libe/libecap/libecap_1.0.1-3.debian.tar.xz

# unpack the source package
dpkg-source -x libecap_1.0.1-3.dsc

# patch the rules file dropping explicit dependency on g++
patch libecap-1.0.1/debian/control < ../../control.patch

# build the package
cd libecap-1.0.1 && dpkg-buildpackage -rfakeroot -b

# and revert
popd
