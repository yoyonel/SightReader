#!/bin/bash

PROJECT_NAME=SightReader
ROOT_DIR=$PWD
SRC_DIR=$ROOT_DIR/src
BUILD_DIR=../build/$PROJECT_NAME

# url: http://stackoverflow.com/questions/59838/check-if-a-directory-exists-in-a-shell-script
if [ ! -d "$BUILD_DIR" ]; then
  # Control will enter here if $DIRECTORY doesn't exist.
  mkdir -p $BUILD_DIR
fi

cd $BUILD_DIR 
cmake $ROOT_DIR
cd -