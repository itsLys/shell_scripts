#!/bin/zsh
cd $CURRENT_PROJ
tmux new-session 'nvim .' \; \
	split-window -h\; \
	rename-window 'main'\; \

