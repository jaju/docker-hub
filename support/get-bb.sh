#/bin/bash -x
VERSION=0.8.157
URL=https://github.com/babashka/babashka/releases/download/v${VERSION}/babashka-${VERSION}-linux-amd64-static.tar.gz
LOCALFILE=bb-${VERSION}.tar.gz

if [ ! -f $LOCALFILE ]; then
    curl -L $URL -o $LOCALFILE
    tar zxvf $LOCALFILE
fi
