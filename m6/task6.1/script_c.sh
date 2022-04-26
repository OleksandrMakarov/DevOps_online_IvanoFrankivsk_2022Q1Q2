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

tar -czvf $2/.$(date +%Y%m%d-%H%M%S).tar.gz $1