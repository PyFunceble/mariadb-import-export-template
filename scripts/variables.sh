#!/usr/bin/env bash

# **********************
# Setting date variables
# **********************
printf "\nSetting Variables\n"

# First setup the working dir
pushd . > /dev/null
SCRIPT_PATH="${BASH_SOURCE[0]}";
if ([ -h "${SCRIPT_PATH}" ]) then
  while([ -h "${SCRIPT_PATH}" ]) do cd `dirname "$SCRIPT_PATH"`; SCRIPT_PATH=`readlink "${SCRIPT_PATH}"`; done
fi
cd `dirname ${SCRIPT_PATH}.` > /dev/null
SCRIPT_PATH=`pwd`;
popd  > /dev/null

ROOT_DIR="$(dirname "$SCRIPT_PATH")"

export script_dir="${ROOT_DIR}/scripts"
export testdir="${ROOT_DIR}/test_data"
export testfile="${testdir}/rpz.mypdns.cloud.list"
export whitelist="${testdir}/whitelist.txt"
export tag=$(date '+%F %X %Z %z')
