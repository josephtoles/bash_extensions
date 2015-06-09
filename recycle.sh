#!/bin/bash

# Set RECYCLE_DIRECTORY
DEFAULT_RECYCLE_DIRECTORY="~/.recycle"
if [ ! $RECYCLE_DIRECTORY ]
then
  RECYCLE_DIRECTORY=$DEFAULT_RECYCLE_DIRECTORY
fi

# create recycling folder if necessary
if [ ! -d $RECYCLE_DIRECTORY ]
then
  mkdir $RECYCLE_DIRECTORY
fi

# check that file $1 exists
if [ ! -e $1 ]
then
  echo "file $1 does not exist"
  exit 1
fi

# check if file exists in recycle directory. Append integer if necessary
filename=`basename $1`
target="$RECYCLE_DIRECTORY/$filename"
index=0
while [ -e $target ]
do
  let "index += 1"
  target="${RECYCLE_DIRECTORY}/${filename}_${index}"
done

# move file to recycle directory
mv $1 $target

