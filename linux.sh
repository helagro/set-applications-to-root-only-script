#!/bin/bash

PERMISSION=""

if [ $2 = "--unlock" ] 
then
    PERMISSION="751"
else
    PERMISSION="470"

    RUN_SCRIPT_PATH="createdShortcuts/runProgram.sh"
    touch $RUN_SCRIPT_PATH
    chmod "777" $RUN_SCRIPT_PATH
    echo "sudo "$1 > $RUN_SCRIPT_PATH

    echo "Script to run program added in createdShortcuts" 
fi

sudo chmod $PERMISSION $1