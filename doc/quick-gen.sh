#!/bin/sh

mkdir -p images/
docker run --rm -v $(pwd):/media/ jrbeverly/rsvg:baseimage rsvg-iconset -f logo.svg -o images/logo/
docker run --rm -v $(pwd):/media/ jrbeverly/rsvg:baseimage rsvg-iconset -f icon.svg -o images/icon/