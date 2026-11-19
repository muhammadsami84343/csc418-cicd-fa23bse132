#!/bin/sh
sed -i "s/ARCH_HERE/$(uname -m)/; s/HOST_HERE/$(hostname)/; s/VERSION_HERE/${APP_VERSION:-dev}/" /usr/share/nginx/html/index.html
