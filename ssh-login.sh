#!/bin/zsh

host="$1"

case "$host" in
    "lectura") sshpass -p QDCznZewEX ssh junyong@lectura.cs.arizona.edu ;;
    *) printf "Invalid host name: %s\n" "$host" >&2
        exit 1 ;;
esac
