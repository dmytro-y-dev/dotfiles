source /home/xanadu/antigen.zsh

# Load the oh-my-zsh's library.
antigen use oh-my-zsh

antigen bundle git
antigen bundle command-not-found
antigen bundle zsh-users/zsh-syntax-highlighting
antigen bundle ansible-role-zsh
antigen bundle docker
antigen bundle docker-compose
antigen bundle gradle
antigen bundle symfony
antigen bundle tmux
antigen bundle tmuxinator
antigen bundle tig

# Load the theme.
antigen theme clean 

# Tell Antigen that you're done.
antigen apply

# Additional ZSH config

unsetopt share_history

# Set environment vars

alias ll='ls -aAlF'

export VISUAL=nvim
export EDITOR="$VISUAL"

alias sw="~/start-workspace.sh"

eval "$(hub alias -s)"

