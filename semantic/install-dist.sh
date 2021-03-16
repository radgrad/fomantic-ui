#!/bin/bash

set -x # echo on

gulp build

rm -rf ../../radgrad2/app/client/lib/semantic-ui
rm -rf ../../radgrad2/app/public/themes
mkdir ../../radgrad2/app/client/lib/semantic-ui/
cp -r dist/semantic.min.css ../../radgrad2/app/public
cp -r dist/semantic.min.js ../../radgrad2/app/client/lib/semantic-ui/
cp -r dist/themes ../../radgrad2/app/public
