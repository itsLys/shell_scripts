#! /bin/bash

set -x
who | grep ${1}
set +x
echo hello
