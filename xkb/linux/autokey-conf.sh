#!/bin/bash

set -ex
BASEDIR=$(dirname $(realpath -s $0))
AUTOKEY_DATA=$HOME/.config/autokey/data

rm -r $AUTOKEY_DATA
ln -s $BASEDIR/autokey $AUTOKEY_DATA
