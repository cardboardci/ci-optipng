#!/bin/sh

# Variables
#
# Variables of the script.
SCRIPT=$(readlink -f "$0")
DIR="$(dirname $SCRIPT)"
ROOT_DIR="$(dirname $DIR)"
BIN_DIR="${DIR}/target"
DATA_DIR="${DIR}/resources"
LIB_DIR="${DIR}/lib"

#
# Tests
#
source $LIB_DIR/testbase.sh

#
# Test Runner
#
(
    rm -rf $BIN_DIR
    mkdir -p $BIN_DIR
    (
      RESULT=$(install)
      assertNotEquals "cannot install to image" 0 $?
    )

    (
      RESULT=$(simple_png)
      assertEquals "convert simple png" 0 $?
    )
)