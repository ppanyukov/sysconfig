#!/bin/bash
#
# A kind of an alias support for the Perforce p4.
#
# This one aliases "interchanges" and "changes" commands to be printed out nicely in format:
# 
#   Change <change_no> on <date> by <user>@<workspace> [<status>]
#       <first line of change description>
#       --
#   Change <change_no> on <date> by <user>@<workspace> [<status>]
#       <first line of change description>
#       --
#   ...
#
# The alias works by checking the first arugument. If it's "interchanges" or
# "changes", then the we pass all the remaining arguments to the real p4 and
# then format the output.
#
# In all other cases we invoke real p4 and pass all arguments as-is.
#
# To use this instead of the real p4, add this line to .bashrc:
#
# alias p4='<path_to_p4x.sh'
#
if [ $# -eq 0 ]
then
    \p4
elif [ "$1" == "interchanges" -o "$1" == "changes" ]
then
    command=$1
    shift
    # Note: don't quote $*, it doesn't work with p4
    \p4 $command -l $* | grep -A2 -e '^Change' | grep -v '^$'
else
    echo "\p4 $*"
    \p4 $*
fi

