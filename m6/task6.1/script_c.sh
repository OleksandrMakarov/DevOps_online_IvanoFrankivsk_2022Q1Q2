#!/bin/bash
function show_help {
    echo $'Please, provide two parameters:'
    echo $'\t Path to the syncing directory'
    echo $'\t The path to the directory where the copies of the files will be stored.'
}
if [ -z "$1" ] || [ -z "$2" ]
    then
        show_help
        exit 0
fi

rsync -azh --delete --info=del,name $1 $2 | 
while read line; do
    if [[ "$line" = \./ ]];
        then continue 
    fi;
    if [[ "$line" =~ \deleting.* ]];
        then
            echo "`date +%Y-%m-%d-%T` $line"
        else
            echo "`date +%Y-%m-%d-%T` adding $line"
    fi; 
done >> script_c.log