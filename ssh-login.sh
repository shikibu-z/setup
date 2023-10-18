#!/bin/zsh

host="$1"

case "$host" in
    "lectura") sshpass -p [password] ssh [hostname] ;;
    *) printf "Invalid host name: %s\n" "$host" >&2
        exit 1 ;;
esac
