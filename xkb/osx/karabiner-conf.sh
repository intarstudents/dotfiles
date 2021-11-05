#!/bin/bash

set -ex

realpath() {
	[[ $1 = /* ]] && echo "$1" || echo "$PWD/${1#./}"
}

BASEDIR=$(dirname $(realpath -s $0))
KARABINER_JSON=$HOME/.config/karabiner/karabiner.json

rm $KARABINER_JSON
ln -s $BASEDIR/karabiner.json $KARABINER_JSON
