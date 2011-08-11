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
    gnome-terminal \
    links \
    lynx \
    lua \
    vim

# There are some bugs in the mono dependencies, hence
# they are in the separate install statement(s) here.
sudo port install libxslt +universal
sudo port install libgdiplus +universal
sudo port install mono +universal
