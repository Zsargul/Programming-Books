#!/bin/sh

if [ -e $1 ] ; then
	echo "${1} doesn't exist"
	exit 0
fi

if [ -f $1 ] ; then
	echo "${1} is a regular file"
elif [ -d $1 ] ; then
	echo "${1} is a directory"
else
	echo "${1} is another type of file (not regular or directory)"
fi

echo "$(ls -l ${1})"
