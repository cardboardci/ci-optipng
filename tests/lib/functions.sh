#!/bin/sh

# Tests
#
# A set of common functions that should be tested on the docker image.

install()
{
    apk add --update zip >/dev/null 2>&1
}

optipng()
{
    optipng -version >/dev/null 2>&1
}

simple_png()
{
    optipng resources/test.svg -dir target/test.png >/dev/null 2>&1
}