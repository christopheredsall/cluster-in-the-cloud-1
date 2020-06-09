#!/bin/bash

for dir in *-base *-install *-destroy
do
    cd "${dir}" || exit
    docker build -t clusterinthecloud/"${dir}":latest .
    cd ..
done
