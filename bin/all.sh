#!/bin/bash

function cd() {
  builtin cd $1

  if [ -r "$PWD/.env" ]; then
    source "$PWD/.env"
  fi
}

. bin/getIP.sh
. bin/regServer.sh
. bin/need_build_img.sh
. bin/cleanDir.sh