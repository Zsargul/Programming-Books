#!/bin/sh

read -p "Enter name of file or directory: " FILE

if [ -e $FILE ] ; then
	echo "${FILE} doesn't exist"
	exit 0
fi

if [ -f $FILE ] ; then
	echo "${FILE} is a regular file"
elif [ -d $FILE ] ; then
	echo "${FILE} is a directory"
else
	echo "${FILE} is another type of file (not regular or directory)"
fi

echo "$(ls -l ${FILE})"
