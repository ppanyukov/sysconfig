#!/bin/bash

# libgnome is undeclared dependency for gnome-terminal, according to this. It
# needs to be installed for gnome-terminal to work!
sudo port install \
    curl \
    ncurses \
    git-core \
    macvim \
    emacs \
    emacs-app \
    xorg-server \
    rxvt-unicode \
    libgnome \
    gnome-terminal
