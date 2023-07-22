#/bin/bash -x
VERSION=1.3.182
URL=https://github.com/babashka/babashka/releases/download/v${VERSION}/babashka-${VERSION}-linux-amd64-static.tar.gz
LOCALFILE=bb-${VERSION}.tar.gz

cd "$(dirname "$0")"
if [ ! -f $LOCALFILE ]; then
	curl -L $URL -o $LOCALFILE
	tar zxvf $LOCALFILE
fi
