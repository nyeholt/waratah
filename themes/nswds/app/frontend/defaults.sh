#!/usr/bin/env bash
echo 'Creating/updating waratah-branding project defaults'
DEFAULT_PATH=../../../../../../../waratah-branding/frontend/src
mkdir -p $DEFAULT_PATH
touch ${DEFAULT_PATH}/defaults.scss
touch ${DEFAULT_PATH}/app.scss
touch ${DEFAULT_PATH}/app.js
echo 'Completed: waratah-branding project defaults'
