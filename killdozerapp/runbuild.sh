#!/bin/bash

SOURCE_DIR="/root/killdozerclub/killdozerapp/build/"
TARGET_DIR="/var/www/html"

if [ -d "$SOURCE_DIR" ]; then
    echo "Removing existing files in $TARGET_DIR..."
    rm -rf $TARGET_DIR/*

    if [ $? -eq 0 ]; then
        echo "Existing files removed successfully."
        mv -v $SOURCE_DIR* $TARGET_DIR
        echo "New files moved successfully from $SOURCE_DIR to $TARGET_DIR."
    else
        echo "Error removing files in $TARGET_DIR. Operation aborted."
    fi
else
    echo "Error: Source directory $SOURCE_DIR does not exist."
fi
