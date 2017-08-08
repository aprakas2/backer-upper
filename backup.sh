#!/bin/bash

TRACKED_FILES_INPUT=".trackedFiles"
BACKUPS_ROOT_DIR="~/dev/sovrn-configs"

while read -r file
do
    cp "$file" "$BACKUPS_ROOT_DIR" 
done < "$TRACKED_FILES_INPUT"
