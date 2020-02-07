#!/bin/bash

echo "Script description : ";
echo "Download a DB, with the format \"john.doe@domain.fr:password\"";
echo "Usage $0 passwords_to_add big_list";
echo "Concatene DB passwords found in passwords_to_add with big_list";
echo "Sort & remove duplication, result in big_list_new file";

if [ -f "$1" ]; then
        passwd=$1;
        big_list=$2;
        cut -d ":" -f2 $1 >> $2
        sort -u $2 > big_list_new
	mv -f big_list_new $2
else
        echo "Expected a file at $1 but it doesn't exist."
        exit 1
fi

