#!/bin/bash

for foo in bak/*
do
    echo $foo
    bak="${foo}.bak"
    if [[ $foo =~ ^(bak/).*(^\.bak)$ ]]
    then
        continue
    fi
    cp $foo $bak
done 