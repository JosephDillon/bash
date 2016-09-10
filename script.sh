#!/bin/bash
myarr=($(ps - u kdride | awk -F ':' '{ print $1}' /etc/passwd))

for i in "${myarr[@]}"
do
	:
		passwd $i newpass
done
