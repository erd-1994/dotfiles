#!/bin/sh

tmux has-session -t main 2>/dev/null && exit 0

tmux new-session -d -s main -n nvim
tmux send-keys -t main:nvim nvim C-m
tmux new-window -t main -n bash
tmux new-window -t main -n logs
tmux select-window -t main:1

tmux a -t main
