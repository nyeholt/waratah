#!/usr/bin/env bash
NPM=`which npm`

if ! [ -x "$(command -v $NPM)" ]; then
  echo 'Error: npm is not installed on host' >&2
  exit 1
fi

PWD=`pwd`
PREFIX="${PWD}/themes/nswds/app/frontend/"

echo "Building the NSW Design System"
echo "Binary: $NPM"
echo "Prefix: $PREFIX"

echo "Stage: buildall"
$NPM -q --silent --prefix $PREFIX run-script buildall

echo "Completed the NSW Design System build"
