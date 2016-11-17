# Load the default .profile
[[ -s "$HOME/.profile" ]] && source "$HOME/.profile" 

# Load .bashrc if it exists
[[ -s "$HOME/.bashrc" ]] && source "$HOME/.bashrc"

# full colors
if [ -e /usr/share/terminfo/x/xterm-256color ]; then
  export TERM='xterm-256color'
else
  export TERM='xterm-color'
fi

# Prompt
export PS1="\[\e[34m\]\t \[\e[m\]\u\[\e[32m\]\w\[\e[m\]\[\e[33m\]\$(__git_ps1)\[\e[m\] "

# PATH
[[ -d $HOME/bin ]] && export PATH="$PATH:$HOME/bin"

# Misc
export ARCHFLAGS="-arch x86_64"
export EDITOR=/usr/bin/vim
export VISUAL=/usr/bin/vim
export CLICOLOR=1

# Pip
export PIP_REQUIRE_VIRTUALENV=true
#export PIP_REQUIRE_VIRTUALENV=false

# Python Virtualenvwrapper
export WORKON_HOME=$HOME/.virtualenvs
export PROJECT_HOME=$HOME/Devel
source /usr/local/bin/virtualenvwrapper.sh

# misc
export PROMPT_DIRTRIM=2
export INPUTRC=~/.inputrc

# Put git status in prompt
source ~/.git-prompt.sh

# chruby auto-load ruby version
source /usr/local/share/chruby/chruby.sh
source /usr/local/share/chruby/auto.sh

# load brew's bash-completion
[[ -f $(brew --prefix)/etc/bash_completion ]] && source $(brew --prefix)/etc/bash_completion
