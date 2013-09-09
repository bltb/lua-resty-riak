#!/bin/sh
set -e
git checkout gh-pages
git merge master
ldoc .
git add .
git status
git commit -a -m "updated docs"
git push origin gh-pages
git checkout master
