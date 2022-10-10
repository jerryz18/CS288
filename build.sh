#!/bin/bash

if [[ -z "$SUFFIXES" ]]
then
	SUFFIXES=".c"
fi

if [[ -z "$CC" ]]
then
	CC="gcc"
fi

if [[ -z "$CFLAGS" ]]
then
	CFLAGS="-Wall -Werror"
fi

if [[ -z "$VERBOSE" ]]
then
	VERBOSE=""
fi

for extension in $SUFFIXES
do
	for file in *$extension
	do
		if [[ -e $file ]]
		then
			$CC $CFLAGS -o $(basename -s $extension $file) $file

			if [[ ! -z $VERBOSE ]]
			then
				echo $CC $CFLAGS -o $(basename -s $extension $file) $file
			fi
		fi
	done
done