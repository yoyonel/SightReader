#!/bin/bash

PROJECT_NAME=SightReader
ROOT_DIR=$PWD
SRC_DIR=$ROOT_DIR/src
BUILD_DIR=../build/$PROJECT_NAME

# urls
# - http://stackoverflow.com/questions/59838/check-if-a-directory-exists-in-a-shell-script
# - http://stackoverflow.com/questions/638975/how-do-i-tell-if-a-regular-file-does-not-exist-in-bash
if [ -d "$BUILD_DIR" ] && [ -f "$BUILD_DIR/Makefile" ]; then
  cd $BUILD_DIR 
  make $@
else
	echo "$BUILD_DIR/Makefile n'existe pas !"
	echo ">> exécuter ./configure.sh et/ou régler ces problèmes!"
fi

