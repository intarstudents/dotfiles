#!/bin/bash

BASEDIR=$(/usr/bin/dirname $(/usr/bin/realpath -s $0))
TRG_FILE="/tmp/xkb-udev"

touch $TRG_FILE
while inotifywait -e close_write -e attrib $TRG_FILE;
do
	sleep 1
	$BASEDIR/xmodmap.sh
done
