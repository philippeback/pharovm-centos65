#!/bin/bash

echo "Installing dependencies for the PharoVM on CentOS 6.x"

PACKAGES=`cat packages-to-install.txt | cut -d' ' -f1 | xargs`

for package in $PACKAGES
do
	echo "Installing: $package"
	yum -y install $package

done
