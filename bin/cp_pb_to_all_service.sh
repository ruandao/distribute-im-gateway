#!/bin/bash

PROJECT_DIR=`pwd`

# for Auth
rm -rf src/Auth/pb
cp -r src/Comet/pb src/Auth/pb
