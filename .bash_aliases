# Aliases
# #######

# Get the name of OS. Will have:
# - Linux for Linux (obviously)
# - Darwin for Mac OS X
OS=$(uname -s)

# Some example alias instructions
# If these are enabled they will be used instead of any instructions
# they may mask.  For example, alias rm='rm -i' will mask the rm
# application.  To override the alias instruction use a \ before, ie
# \rm will call the real rm not the alias.

# Useful ls aliases, a bit different from the Linux because we are on BSD variant
alias la='ls -A'   # list all entries except for . and ..
alias ll='ls -l'   # long listing

# Note the color ls command differs on Linux and Mac OS X!
if [ $OS = "Darwin" ]; then
    alias ls='ls -GFh' # color output for ls, use '/' for dirs and human-readable sizes
elif [ $OS = "Linux" ]; then
    alias ls='ls -hF --color=tty'
fi

# Safer interactive deletes, copies and moves
alias rm='rm -i'
alias cp='cp -i'
alias mv='mv -i'

# Default to human readable figures
alias df='df -h'   # disk space usage in human-readable form
alias du='du -h'   # file space usage in human-readable form

# Grep stuff
alias grep='grep --color=auto'      # use color in grep
alias egrep='egrep --color=auto'    # same for egrep
alias fgrep='fgrep --color=auto'    # same for fgrep

# Aliases to other programs
alias ack='ack-grep'    # better than grep, sort of, install separately
alias type='type -a'    # show all locations for files

# Hacks to make life easier
# From http://www.thegeekstuff.com/2008/10/6-awesome-linux-cd-command-hacks-productivity-tip3-for-geeks/
# alias ..="cd .."
# alias ..2="cd ../.."
# alias ..3="cd ../../.."
# alias ..4="cd ../../../.."
# alias ..5="cd ../../../../.."

# mkdir and cd into it in one go
# function mkdircd () { mkdir -p "$@" && eval cd "\"\$$#\""; }
#

# Custom alias to run the p4 commands using util/p4x.sh script
alias p4='~/local/bin/p4x.sh'

