umask 002

# Load the default .profile
[[ -s "$HOME/.profile" ]] && source "$HOME/.profile" 

# Load .bashrc if it exists
[[ -s "$HOME/.bashrc" ]] && source "$HOME/.bashrc"

# Set architecture flags
export ARCHFLAGS="-arch x86_64"
export EDITOR=/usr/bin/vi
export VISUAL=/usr/bin/vi
export CLICOLOR=1
if [ -e /usr/share/terminfo/x/xterm-256color ]; then
  export TERM='xterm-256color'
else
  export TERM='xterm-color'
fi
export PROMPT_DIRTRIM=2
#export PIP_REQUIRE_VIRTUALENV=true
export PIP_REQUIRE_VIRTUALENV=false
export INPUTRC=~/.inputrc

# Python Virtualenvwrapper
export WORKON_HOME=$HOME/.virtualenvs
export PROJECT_HOME=$HOME/Devel
source /usr/local/bin/virtualenvwrapper.sh

# Put git status in prompt
source ~/.git-prompt.sh

# Prompt
export PS1="\[\e[34m\]\t \[\e[m\]\u\[\e[32m\]\w\[\e[m\]\[\e[33m\]\$(__git_ps1)\[\e[m\] "

# RVM
[[ -s "$HOME/.rvm/scripts/rvm" ]] && source "$HOME/.rvm/scripts/rvm" # Load RVM into a shell session *as a function*
export PATH="$PATH:$HOME/.rvm/bin" # Add RVM to PATH for scripting
