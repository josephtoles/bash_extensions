#!/bin/bash

# Constants
DEFAULT_RECYCLE_PATH=~/.recycle

# Set RECYCLE_PATH
echo "DEFAULT_RECYCLE_PATH is $DEFAULT_RECYCLE_PATH"
if [ ! $RECYCLE_PATH ]
then
  RECYCLE_PATH=DEFAULT_RECYCLE_PATH
  echo "setting RECYCLE_PATH to $RECYCLE_PATH"
fi

# check if file $1 exists
if [ ! -e $1 ]
then
  echo "file $1 does not exist"
  exit 1
fi

# check if file exists in recycle directory. Append integer if necessary
# TODO

# move file to recycle directory
# TODO

