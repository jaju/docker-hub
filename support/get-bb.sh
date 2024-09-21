#!/bin/bash -x
VERSION=1.3.191
URL=https://github.com/babashka/babashka/releases/download/v${VERSION}/babashka-${VERSION}-linux-amd64-static.tar.gz
LOCALFILE=bb-${VERSION}.tar.gz

cd "$(dirname "$0")" || exit 1
if [ ! -f $LOCALFILE ]; then
	curl -L $URL -o $LOCALFILE
	tar zxvf $LOCALFILE
fi
