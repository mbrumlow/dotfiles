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
		if [ $i == ".config" ]; then
			for z in `ls -a $i`; do
				if [ $z == "." ]; then
					continue
				fi
				if [ $z == ".." ]; then
					continue
				fi
				echo "Installing $i/$z"
				if [ -d $i/$z ]; then
					ln -sfrT `pwd`/$i/$z ~/$i/$z

				fi
			done
		else
			ln -sfrT `pwd`/$i ~/$i
		fi
    fi

done

