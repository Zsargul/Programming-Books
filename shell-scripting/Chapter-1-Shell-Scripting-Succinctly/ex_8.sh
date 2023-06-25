#!/bin/sh

for FILE in $@ ; do
	echo "File: ${FILE}"

	if [ ! -e $FILE ] ; then
		echo "${FILE} doesn't exist"
		continue
	fi

	if [ -f $FILE ] ; then
		echo "${FILE} is a regular file"
	elif [ -d $FILE ] ; then
		echo "${FILE} is a directory"
	else
		echo "${FILE} is another type of file (not regular or directory)"
	fi

	echo "$(ls -l ${FILE})"
done

