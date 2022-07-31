#/bin/bash -x
VERSION=0.9.160
URL=https://github.com/babashka/babashka/releases/download/v${VERSION}/babashka-${VERSION}-linux-amd64-static.tar.gz
LOCALFILE=bb-${VERSION}.tar.gz

if [ ! -f $LOCALFILE ]; then
    curl -L $URL -o $LOCALFILE
    tar zxvf $LOCALFILE
fi
