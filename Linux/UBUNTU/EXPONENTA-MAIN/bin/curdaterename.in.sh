#!/bin/bash
if [ $# -eq 0 ]
then
	exit 1
fi
newname2=$(date  +%Y%m%d)
cp $1 $1-$newname2
exit 0
