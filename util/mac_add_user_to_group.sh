#!/bin/bash

# A quick script to add users the group on Mac OS X Snow Leopard.
# This is not as trivial as it might sound! And not sure there is
# a GUI utility for that either.

usage ()
{
    cat >&2 << EOF
Usage: ${0##*/} group user

Adds the specified user to the group.
The group for development using xcode is "_developer"

You will need admin rights to run this.

Example: 

    ${0##*/} _developer panyukop

this will add user "panyukop" to the group "_developer".

EOF
}

if (( $# < 2 )); then
    usage
    exit 2
fi

group=$1
user=$2

sudo dscl . append /Groups/${group} GroupMembership ${user}

