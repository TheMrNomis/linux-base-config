#!/bin/sh

for var in "$@"
do
    convert $var `echo $var | cut -d '.' -f1`.png
done
