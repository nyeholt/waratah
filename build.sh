#!/usr/bin/env bash
NPM=`which npm`

if ! [ -x "$(command -v $NPM)" ]; then
  echo 'Error: npm is not installed on host' >&2
  exit 1
fi

BUILD_SCRIPT=$(readlink -f "$0")
BUILD_SCRIPT_DIR=$(dirname "$BUILD_SCRIPT")
PREFIX="${BUILD_SCRIPT_DIR}/themes/nswds/app/frontend/"

echo "Building the NSW Design System"
echo "Binary: $NPM"
echo "Prefix: $PREFIX"

echo "Target: buildall"
$NPM --prefix $PREFIX run-script buildall

echo "Completed the NSW Design System build"
