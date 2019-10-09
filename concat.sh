#!/bin/bash

concat()
{
	for i in `seq -f '%02g' ${ferst} ${last}`; do
		ls ${version}/${version}.${i}*
	done
}

concate()
{
	echo -e "\nThis doesn't work :)"
}

read -p "Kernel version? " version
oldest=$(cd ${version} && ls | head -n1 | sed 's/^..*\-\([1-9]\)/\1/; s/.patch//')
latest=$(cd ${version} && ls | tail -n1 | sed 's/^..*\-\([1-9]\)/\1/; s/.patch//')
read -e -p "Starting patch? " -i "$(printf %02d ${oldest})" ferst

read -e -p "Latest patch? " -i "$(printf %02d ${latest})" last

concate
