#!/bin/bash

set -ex
BASEDIR=$(dirname $(realpath -s $0))

xmodmap $BASEDIR/xmodmap.conf
