#!/bin/bash
SCRIPT=`pwd`/$0
PATHNAME=`dirname $SCRIPT`
ROOT=$PATHNAME/lynckia
BUILD_DIR=$ROOT/build
CURRENT_DIR=`pwd`
EXTRAS=$ROOT/extras

export LD_LIBRARY_PATH=$LD_LIBRARY_PATH:$ROOT/erizo/build/erizo:$ROOT/erizo
export ERIZO_HOME=$ROOT/erizo/

cd $ROOT/erizo_controller
./initErizo_controller.sh

cp $ROOT/erizo_controller/erizoClient/dist/erizo.js $EXTRAS/basic_example/public/

echo [lynckia] Done, run basic_example/basicServer.js
