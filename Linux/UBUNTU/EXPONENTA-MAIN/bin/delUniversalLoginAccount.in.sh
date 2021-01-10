#!/bin/bash
###
#
# delUniversalLoginAccoont.sh
#
# This Script remove local admin user with login «MyAdminAccount» and password «MyAdminPassword» from system
#
# The Script returns:
# * 2 if general ERROR occur when running the script
# * 0 otherwice (no syntax and runtime errors)
#

if [ ! -f @bindir@/deluser.sudo.sh ]; then
	echo -en "\nGENERAL ERROR: \n\tExponenta Admin Pack is not properly Installed\n"
	exit 2
fi

deluser.sudo.sh MyAdminAccount
if [ $? -ne 0 ]
then
	echo "\n\nGENERAL ERROR occur\n"
	exit 2
fi
userdel -f -r MyAdminAccount && echo -en "\nSuccess! \n\tThe sudo user MyAdminAccount has been deleted\n"
exit 0
