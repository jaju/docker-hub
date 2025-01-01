#!/bin/bash

VERSION=1.12.194
URL=https://github.com/babashka/babashka/releases/download/v${VERSION}/babashka-${VERSION}-linux-amd64-static.tar.gz
LOCALFILE=bb-${VERSION}.tar.gz
LOCALOUTPUT=bb

cd "$(dirname "$0")" || exit 1

if [ -f $LOCALOUTPUT ]; then
  echo "File $LOCALOUTPUT already exists. Skipping download."
  exit 0
fi

source utils.sh
download $URL $LOCALFILE

tar zxvf $LOCALFILE
