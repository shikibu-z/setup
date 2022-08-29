#!/bin/zsh

###
 # @Description : This is my shell script for ssh connections.
 # @Author      : Junyong Zhao (junyong@arizona.edu)
 # @LastEditTime: 2022-08-29 10:43:46
###

host="$1"

case "$host" in
    "lectura") sshpass -p QDCznZewEX ssh junyong@lectura.cs.arizona.edu ;;
    *) printf "Invalid host name: %s\n" "$host" >&2
        exit 1 ;;
esac
