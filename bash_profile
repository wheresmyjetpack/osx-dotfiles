# Load the default .profile
[[ -s "$HOME/.profile" ]] && source "$HOME/.profile"

# Load .bashrc if it exists
[[ -s "$HOME/.bashrc" ]] && source "$HOME/.bashrc"

[[ $TMUX = "" ]] && export TERM="xterm-256color"

# Prompt
export PS1="\[\e[38;5;92m\]\t \[\e[m\]\u \[\e[36m\]\w\[\e[m\]\[\e[38;5;202m\]\$(__git_ps1)\[\e[m\] "

# PATH
[[ -d $HOME/bin ]] && export PATH="$PATH:$HOME/bin"

# Misc
export ARCHFLAGS="-arch x86_64"
export EDITOR=/usr/bin/vim
export VISUAL=/usr/bin/vim
export CLICOLOR=1

# Pip
#export PIP_REQUIRE_VIRTUALENV=true
export PIP_REQUIRE_VIRTUALENV=false

# Python Virtualenvwrapper
#export WORKON_HOME=$HOME/.virtualenvs
#export PROJECT_HOME=$HOME/Devel
#source /usr/local/bin/virtualenvwrapper.sh

# misc
export PROMPT_DIRTRIM=2
export INPUTRC=~/.inputrc
export PATH="/usr/local/sbin:$PATH"

# Put git status in prompt
source ~/.git-prompt.sh

# chruby auto-load ruby version
source /usr/local/share/chruby/chruby.sh
source /usr/local/share/chruby/auto.sh

# load git auto-completion
[[ -f $HOME/.git-completion.bash ]] && . $HOME/.git-completion.bash

# load brew's bash-completion
[[ -f $(brew --prefix)/etc/bash_completion ]] && source $(brew --prefix)/etc/bash_completion
