#!/bin/bash
if [[ $EUID -eq 0 ]]; then
   echo "This script must NOT be run as root" 1>&2
   exit 1
fi

# set ecap version
source ecap.ver

# drop ecap build folder
rm -R build/libecap

# we will be working in a subfolder make it
mkdir -p build/libecap

# decend into working directory
pushd build/libecap

# get libecap from debian stretch
wget http://http.debian.net/debian/pool/main/libe/libecap/libecap_${ECAP_PKG}.dsc
wget http://http.debian.net/debian/pool/main/libe/libecap/libecap_${ECAP_VER}.orig.tar.gz
wget http://http.debian.net/debian/pool/main/libe/libecap/libecap_${ECAP_PKG}.debian.tar.xz

# unpack the source package
dpkg-source -x libecap_${ECAP_PKG}.dsc

# build the package
cd libecap-${ECAP_VER} && dpkg-buildpackage -rfakeroot -b

# and revert
popd
