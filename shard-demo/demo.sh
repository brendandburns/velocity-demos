#!/bin/bash

. ../util.sh

run "clear"

tmux new -d -s my-orig-session-shard \
            "$(dirname $BASH_SOURCE)/run_app.sh" \; \
            split-window -v -p 50 \
            "$(dirname ${BASH_SOURCE})/hit_app.sh" \; \
            attach

run "kubectl get pods"


