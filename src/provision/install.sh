#!/bin/sh
set -ex
cd /tmp/

apk add --update --no-cache optipng

rm -rf /tmp/* /var/tmp/* /var/cache/apk/*