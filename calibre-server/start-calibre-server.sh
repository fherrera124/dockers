#!/usr/bin/env bash

XDG_RUNTIME_DIR=/tmp/runtime-root /usr/bin/calibre-server \
    --disable-use-bonjour \
    --userdb /users/users.sqlite \
    --enable-auth \
    --auth-mode 'basic' \
    "$@" \
    "/library"