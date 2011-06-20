# Aliases
# #######

# Some example alias instructions
# If these are enabled they will be used instead of any instructions
# they may mask.  For example, alias rm='rm -i' will mask the rm
# application.  To override the alias instruction use a \ before, ie
# \rm will call the real rm not the alias.

# Interactive operation...
alias rm='rm -i'
alias cp='cp -i'
alias mv='mv -i'

# Default to human readable figures
alias df='df -h'
alias du='du -h'

# Misc :)
alias less='less -r'                          # raw control characters
alias whence='type -a'                        # where, of a sort
alias grep='grep --color'                     # show differences in colour

# Some shortcuts for different directory listings
alias ls='ls -hF --color=tty'                 # classify files in colour
alias dir='ls --color=auto --format=vertical'
alias vdir='ls --color=auto --format=long'
alias ll='ls -l'                              # long list
alias la='ls -A'                              # all but . and ..
alias l='ls -CF'                              #

# Aliases to other programs
alias ack='ack-grep'

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

