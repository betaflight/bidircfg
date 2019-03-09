#!/bin/sh

for f in $(ls boards);
do
    rm -f $f
    cat boards/$f settings.cf > $f
done
