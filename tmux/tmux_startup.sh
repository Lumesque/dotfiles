#!/usr/bin/bash
#
tmux new-session -d
tmux split-window -v
tmux split-window -h
tmux select-pane -t 0
tmux resize-pane -D 3
tmux attach -d -t 0
