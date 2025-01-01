#!/bin/bash
SCALA_VERSION=2.13
VERSION=3.8.0
URL=https://dlcdn.apache.org/kafka/${VERSION}/kafka_${SCALA_VERSION}-${VERSION}.tgz
LOCALFILE=kafka-${VERSION}.tar.gz
LOCALOUTPUT=kafka

cd "$(dirname "$0")" || exit 1

if [ -d $LOCALOUTPUT ]; then
  echo "Directory $LOCALOUTPUT already exists. Skipping download."
  exit 0
fi

source utils.sh
download $URL $LOCALFILE

tar zxvf $LOCALFILE
mv kafka_${SCALA_VERSION}-${VERSION} kafka
