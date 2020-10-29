#!/bin/sh

set -e

DIR=`dirname $0`

flutter pub pub run daincrementer:daincrementer.dart ${DIR}/../example/pubspec.yaml