#!/bin/bash

SCRIPTNAME=${0##*/}

function print_usage() {
    echo "Usage: $SCRIPTNAME <project name>"
}

## Check the number of arguments.
if [ $# -ne 1 ]; then
    print_usage
    exit 1
fi

mkdir $1
mkdir $1/logs
mkdir $1/www
mkdir $1/conf
mkdir $1/backup
mkdir $1/backup/database
mkdir $1/backup/database/inte
mkdir $1/backup/database/preprod
mkdir $1/backup/database/prod
