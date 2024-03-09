#!/usr/bin/bash
#

if [ -z "$1" ] ; then
    tmux new-session -d
    tmux split-window -v
    tmux split-window -h
    tmux select-pane -t 0
    tmux resize-pane -D 3
else
    tmux new-session -d
    tmux split-window -h
    tmux select-pane -t 1
    tmux split-window -v
    tmux select-pane -t 0
    tmux resize-pane -R 3
fi

tmux attach -d -t 0
