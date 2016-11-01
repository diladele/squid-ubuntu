#!/bin/bash

if [[ $EUID -ne 0 ]]; then
   echo "This script must be run as root" 1>&2
   exit 1
fi

# decend into working directory
pushd build/libecap

# install ecap packages
dpkg --install libecap3_1.0.1-3.2_amd64.deb
dpkg --install libecap3-dev_1.0.1-3.2_amd64.deb

# and revert
popd
