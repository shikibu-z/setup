#!/bin/zsh

###
 # @Description : This is my shell script for ssh connections.
 # @Author      : Junyong Zhao (junyong@seas.upenn.edu)
 # @LastEditTime: 2021-07-13 10:03:15
### 

host="$1"

case "$host" in
    "halloween") ssh junyong@158.130.62.116 ;;
    "seasnet") ssh junyong@158.130.62.105 ;;
    *) printf "Invalid host name: %s\n" "$host" >&2
        exit 1 ;;
esac
