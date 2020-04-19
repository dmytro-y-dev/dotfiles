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

alias ll='ls -ahAlF'

export VISUAL=nvim
export EDITOR="$VISUAL"

alias work="~/start-workspace.sh"

eval "$(hub alias -s)"

export PATH=$PATH:/opt/gradle-4.10.2/bin

alias phpunit=./vendor/bin/simple-phpunit

export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm

alias vu='vagrant up'
alias vh='vagrant halt'
alias vs="vagrant ssh -- -t 'sudo su -'"

alias dkr='docker-compose'

alias aup='cd /mnt/B24803104802D351/ProjectAthena/Deployment; ./up.sh;'
alias astop='cd /mnt/B24803104802D351/ProjectAthena/Deployment; ./stop.sh;'

