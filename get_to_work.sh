#!/bin/zsh
cd $WORK_DIR
tmux new-session 'nvim .' \; \
	split-window -h\; \
	rename-window 'main'\; \

