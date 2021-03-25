#!/usr/bin/env bash
NPM=`which npm`

if ! [ -x "$(command -v $NPM)" ]; then
  echo 'Error: npm is not installed on host' >&2
  exit 1
fi

PWD=`pwd`
PREFIX="${PWD}/themes/nswds/app/frontend/"
GULP="${PREFIX}node_modules/.bin/gulp"
GULPFILE="gulpfile.js"

echo "Building the NSW Design System"
echo "Binary: $NPM"
echo "Prefix: $PREFIX"

echo "Stage: installing"
$NPM -q --silent --prefix $PREFIX install

echo "Stage: rebuild node-sass"
$NPM -q --silent --prefix $PREFIX rebuild node-sass

echo "Stage: gulp build"
echo "Binary: $GULP"
echo "Gulpfile:${PREFIX}${GULPFILE}"
$GULP -f ${PREFIX}${GULPFILE} build
echo "Completed the NSW Design System build"
