#!/bin/bash
# Should this be run from the git repo working folder?
# Get the seven first digits of the latest commit SHA-1 
sha1=$(git rev-parse HEAD | cut -c 1-7 2>&1)
ver=$(git describe --tags 2>&1)
longver=$(git describe --tags --long 2>&1)

echo $sha1
echo $ver
echo $longver

#git tag -a -m "Version 0.0.1" v0.0.1 $sha1