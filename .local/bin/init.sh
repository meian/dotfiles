#!/bin/bash

COMPFILE=$HOME/.init_completed

if [ -f $COMPFILE ] ; then
    echo 'already inited.'
    exit
fi

set -eu

DIR=$HOME/.init

if [ ! -d $DIR ] ; then
    echo "not found or unreadable dir: $DIR" >&2
    exit 1
fi

find $DIR/ -type f -readable | while read f ; do
    . $f
done

cat <<EOL
init is completed.
Please reload bashrc

  . ~/.bashrc

EOL

date > $COMPFILE
