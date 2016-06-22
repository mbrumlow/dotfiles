#!/bin/bash

cd skel

for i in `git ls-files`; do

    echo "Installing $i"

    if [ -f $i ]; then
        ln -f $i ~/$i
    fi

done

