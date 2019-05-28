#!/bin/bash
if [[ $EUID -ne 0 ]]; then
   echo "This script must be run as root" 1>&2
   exit 1
fi

# set ecap version
source ecap.ver

# decend into working directory
pushd build/libecap

# install ecap packages
arch=$(dpkg --print-architecture)
dpkg --install libecap3_${ECAP_PKG}_${arch}.deb
dpkg --install libecap3-dev_${ECAP_PKG}_${arch}.deb

# and revert
popd
