#!/usr/bin/env bash

IS_TESTING=true
. ./android-sync

prepare_test() {
  mkdir -p testcontent/src_dir
}

run_test() {
  echo "Running test"
  build_command ${@}
}

get_src_dir() {
  echo testcontent/src_dir
}

prepare_test && run_test ${@}

