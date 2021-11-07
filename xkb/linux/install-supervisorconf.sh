#!/bin/bash

set -ex
BASEDIR=$(dirname $(realpath -s $0))

sudo tee /etc/supervisor/conf.d/xkb-udev.conf << EOF
[program:xkb-udev]
command = ${BASEDIR}/udev.sh
user = ${USER}
environment = DISPLAY=${DISPLAY}
EOF
