#!/bin/bash
###
#
# addUniversalLoginAccoont.sh
#
# This Script creates local admin user with login В«MyAdminAccountВ» and password В«MyAdminPasswordВ»
#
# The Script returns:
# * 2 if general ERROR occur when running the script
# * 0 otherwice (no syntax and runtime errors)
#

if [ -z $Exponenta1 ] & [ ! -e @bindir@/new-user.sh ]; then
	echo -en "\nGENERAL ERROR: \n\tExponenta Admin Pack is not properly Installed\n"
	exit 2
fi

new-user.sh MyAdminAccount MyAdminPassword
if [ $? -ne 0 ]
then
	echo -en "\nGENERAL ERROR occur\n"
	exit 2
fi
echo -en "\nSuccess! \n\tNew sudo user MyAdminAccount has been created\n"
exit 0
