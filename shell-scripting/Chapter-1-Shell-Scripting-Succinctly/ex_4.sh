#!/bin/sh

if [ -e /etc/shadow ] ; then
	echo "Shadow passwords are enabled"

	if [ -w /etc/shadow ] ; then
		echo "You have permissions to edit /etc/shadow"
	else
		echo "You do NOT have the permissions to edit /etc/shadow"
	fi
fi
