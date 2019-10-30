#!/bin/sh
set -euo

if [ $# -ne 1 ]; then
    echo "error! : Arguments must be only one." 1>&2
    exit 1
fi

texFile="$1.tex"
dviFile="$1.dvi"

platex $texFile
dvipdfmx $dviFile
rm -f $1.aux $1.log $1.out $1.dvi
nautilus $1.pdf


