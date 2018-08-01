#!/bin/sh
[ -z "$1" ] && echo "Provide path to xml file!" && exit 1
echo '{ "phonebook": ['
cat $1 | egrep -h "Name|Telephone" | sed -e 's/<Name>/{ "name":"/g' |sed -e 's/<.Name>/",/g'|sed -e 's/<Telephone>/"phone": "/g'|sed -e 's/<.Telephone>/" },/g'
echo '] }'
echo "Remove trailing comma!"
