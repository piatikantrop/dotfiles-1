#!/bin/bash

set -euo pipefail

# My favorite prefix.
tmux unbind C-b
tmux set-option -g prefix '`'
tmux bind-key -r '`' send-prefix

# Use vi keys except for status line.
tmux set-window-option -g mode-keys vi
tmux set-option -g status-keys "emacs"

# Use SSH-Agent OMZ plugin ###
tmux set-option -g update-environment "DISPLAY WINDOWID SSH_ASKPASS SSH_AGENT_PID SSH_CONNECTION TERM"
tmux set-environment -g "SSH_AUTH_SOCK" "$HOME/.ssh/ssh_auth_sock"

tmux set-option -g renumber-windows on

# EOF
