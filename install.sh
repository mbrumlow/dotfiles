#!/bin/bash

cd skel

for i in `ls -a`; do

    if [ $i == "." ]; then
	continue
    fi

    if [ $i == ".." ]; then
	continue
    fi

    echo "Installing $i"

    if [ -f $i ]; then
        ln -f $i ~/$i
    fi

    if [ -d $i ]; then
        ln -sf `pwd`/$i ~/$i
    fi

done

