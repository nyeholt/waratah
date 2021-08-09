#!/usr/bin/env bash
echo 'Creating/updating project defaults'
DEFAULT_PATH=../../../../../../../mysite/frontend/src/scss
mkdir -p $DEFAULT_PATH
touch ${DEFAULT_PATH}/defaults.scss
touch ${DEFAULT_PATH}/app.scss
echo 'Completed: project defaults'
