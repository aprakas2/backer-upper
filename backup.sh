#!/bin/bash

TRACKED_FILES_INPUT=".trackedFiles"
BACKUPS_DIR="$DEV_HOME/sovrn-configs/backups/"

while read -r file
do
    if [[ ! -z $file ]]
    then
        file="${file/#\~/$HOME}"
        echo "copying file: $file to: $BACKUPS_DIR"
        cp $file $BACKUPS_DIR
    fi
done < "$TRACKED_FILES_INPUT"
