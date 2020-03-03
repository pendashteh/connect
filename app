#!/usr/bin/env bash

[ -e $POTATO_CORE ] && . $POTATO_CORE

potato_load_app

_try potato_exec "${@}"
_catch E && {
  echo '[ERROR] '$E
}
