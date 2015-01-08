#!/bin/bash

cd ovirt-engine
if [ "$1" = '' ]; then
    git pull
else
    git fetch git://gerrit.ovirt.org/ovirt-engine "$1"
    git checkout FETCH_HEAD
fi
make dist
rpmbuild -D"ovirt_build_minimal 1" -tb *.tar.gz

[[ -d /data ]] || exit 0
rm -fr /data/RPMS
cp -a ~/rpmbuild/RPMS /data
