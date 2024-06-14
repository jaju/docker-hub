#/bin/bash -x
SCALA_VERSION=2.13
VERSION=3.7.0
URL=https://dlcdn.apache.org/kafka/${VERSION}/kafka_${SCALA_VERSION}-${VERSION}.tgz
LOCALFILE=kafka-${VERSION}.tar.gz

cd "$(dirname "$0")"
if [ ! -f $LOCALFILE ]; then
	curl -L $URL -o $LOCALFILE
	tar zxvf $LOCALFILE
	mv kafka_${SCALA_VERSION}-${VERSION} kafka
fi
