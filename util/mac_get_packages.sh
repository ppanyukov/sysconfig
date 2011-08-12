#!/bin/bash

# libgnome is undeclared dependency for gnome-terminal, according to this. It
# needs to be installed for gnome-terminal to work!
port install \
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
port install libxslt +universal
port install libgdiplus +universal
port install mono +universal
port install fsharp
