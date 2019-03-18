#!/bin/sh

for f in $(ls boards);
do
    rm -f $f
    cat fragments/header.cf boards/$f fragments/settings.cf | sed 's/@//g' > $f.cf
    cat fragments/header.cf boards/$f fragments/settings.cf | sed 's/@/# /g' > $f-upgrade.cf
done

