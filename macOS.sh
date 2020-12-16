#!/bin/bash

PROGRAM_PATH="/Applications/$1.app"
PERMISSION=""

if [ $2 = "--unlock" ] 
then
    PERMISSION="751"
else
    PERMISSION="470"

    RUN_SCRIPT_PATH="createdShortcuts/"$1".sh"
    touch $RUN_SCRIPT_PATH
    chmod "777" $RUN_SCRIPT_PATH
    echo "sudo "$PROGRAM_PATH"/contents/MacOS/"$1 > $RUN_SCRIPT_PATH

    echo "Script to run program added in createdShortcuts" 
fi

sudo chmod $PERMISSION $PROGRAM_PATH
echo $PROGRAM_PATH