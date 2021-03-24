#!/usr/bin/env bash
NPM=`which npm`
PREFIX=./themes/nswds/app/frontend
echo "Building the NSW Design System via $NPM with target $PREFIX"
echo "Installing"
$NPM --prefix $PREFIX install
echo "Rebuild node-sass"
$NPM --prefix $PREFIX rebuild node-sass
echo "gulp -f $PREFIX/gulpfile build"
$PREFIX/node_modules/.bin/gulp -f $PREFIX/gulpfile.js build
echo "Completed the NSW Design System build"
