#!/bin/bash

set -e

if [[ -z $1 ]]; then
    echo "usage: ./build.sh <tag>"
    exit 1
fi

tag=$1
img=r-reporting-${tag}.img
singfile=$(mktemp Singularity-XXXXXX)
sed s"/TAG/$tag/" < Singularity > $singfile

if [[ ! -f $img ]]; then
    singularity create --size 3000 $img
    sudo singularity bootstrap $img $singfile
fi

rm $singfile
ln -f $img ..
