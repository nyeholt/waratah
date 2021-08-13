#!/usr/bin/env bash
echo 'Creating/updating project defaults'
DEFAULT_PATH=../../../../../../../mysite/frontend/src
mkdir -p $DEFAULT_PATH
touch ${DEFAULT_PATH}/defaults.scss
touch ${DEFAULT_PATH}/app.scss
touch ${DEFAULT_PATH}/app.js
echo 'Completed: project defaults'
