#!/bin/bash
###
#
# This script Turn OFF Kali Linux Firewall even it was hidden install
#
###

# Install Kali Linux Firewall protect system
apt-get install -y ufw
# apt-get install -y gufw

# Disable Kali Linux Firewall protect system
ufw disable
