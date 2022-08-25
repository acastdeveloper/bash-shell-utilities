#!/bin/bash

# It giges 664 privileges to everything, files or folders, recursively.
chmod 664 -R *

# It creates a file with a recursive list of all directories.
ls -R | grep : | sed -s 's/://g' >list_of_directories.txt
sed -i -e "1d" './list_of_directories.txt'

# It changes the permissions of all directories to 755 using the before list.
for j in $(cat "./list_of_directories.txt"); do
	echo $j
	chmod 755 $j
done
