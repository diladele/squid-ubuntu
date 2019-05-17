#!/bin/bash

if [[ $EUID -eq 0 ]]; then
   echo "This script must NOT be run as root" 1>&2
   exit 1
fi

rm -rf _acceptance && mkdir _acceptance

# publish acceptance
cp build/squid/squid*.deb _acceptance/
cp build/squid/squid*.ddeb _acceptance/

echo "Success, DEB/DDEB files are in acceptance folder!"
