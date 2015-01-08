#!/bin/bash

cd vdsm
if [ "$1" == '' ]; then
    git pull
else
    git fetch git://gerrit.ovirt.org/vdsm "$1"
    git checkout FETCH_HEAD
fi
./autogen.sh --system
./configure --enable-hooks
make rpm

[[ -d /data ]] || exit 0
rm -fr /data/RPMS
cp -a ~/rpmbuild/RPMS /data
