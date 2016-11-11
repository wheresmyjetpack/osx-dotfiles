# Allow aliases to be sudoed
# alias sudo='sudo '

# ls aliases
#alias ls='ls -l --color=auto'
alias ll="ls -laF"      
alias ld="ls -ld */"   
alias la="ls -la"

# Grep aliases
alias grep='grep --color=auto'
alias fgrep='fgrep --color=auto'
alias egrep='egrep --color=auto'

alias ..="cd .."
alias ...="cd ../.."
alias ....="cd ../../.."

# Get OS X Software Updates, and update installed Ruby gems, Homebrew, npm, and their installed packages
alias update='sudo softwareupdate -i -a; brew update; brew upgrade; brew cleanup; sudo gem update --system; sudo gem update'

# Recursively remove .DS_Store files
alias cleanupds="find . -type f -name '*.DS_Store' -ls -delete"

# Kill all the tabs in Chrome to free up memory
# # [C] explained: http://www.commandlinefu.com/commands/view/402/exclude-grep-from-your-grepped-output-of-ps-alias-included-in-description
alias chromekill="ps ux | grep '[C]hrome Helper --type=renderer' | grep -v extension-process | tr -s ' ' | cut -d ' ' -f2 | xargs kill"

# Git
alias dt="diff-tree --no-commit-id --name-only"
alias gstat="git status"
alias gd="git diff"
alias gdc="git diff --cached"
alias gl="git log"
alias gb="git branch"
alias gc="git checkout"
alias grh="git reset HEAD"
alias gfu="git fetch upstream"
alias gmu="git merge upstream/master"
alias gorigin="git log --diff-filter=A --follow --format=%aD -1 --"

# Ruby / Rails
alias irb="irb --simple-prompt"
alias rs="rails server"
alias rc="rails console"
alias rg="rails generate"

# Reload shell
alias reload="exec $SHELL -l"

# IP addresses
alias ip="dig +short myip.opendns.com @resolver1.opendns.com"
alias localip="ipconfig getifaddr en0"
alias ips="ifconfig -a | grep -o 'inet6\? \(addr:\)\?\s\?\(\(\([0-9]\+\.\)\{3\}[0-9]\+\)\|[a-fA-F0-9:]\+\)' | awk '{ sub(/inet6? (addr:)? ?/, \"\"); print }'"

# Replace DOS ^M characters w/ two UNIX newlines
alias rmdoslines="sed -i 's|\r|\n\n|g'"

# Empty the Trash on all mounted volumes and the main HDD.
# Also, clear Apple’s System Logs to improve shell startup speed.
# Finally, clear download history from quarantine. https://mths.be/bum
alias emptytrash="sudo rm -rfv /Volumes/*/.Trashes; sudo rm -rfv ~/.Trash; sudo rm -rfv /private/var/log/asl/*.asl; sqlite3 ~/Library/Preferences/com.apple.LaunchServices.QuarantineEventsV* 'delete from LSQuarantineEvent'"
