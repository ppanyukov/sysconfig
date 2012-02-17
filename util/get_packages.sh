# Installs/updates all the useful packages on Ubuntu.
#
# You may need to run "sudo apt-get update" before running
# this to make sure the package info is available locally.
#
# You need to run this with sudo.
apt-get install \
    ack-grep \
    rxvt-unicode \
    git \
    vim \
    vim-gnome \
    openjdk-6-jdk \
    clojure \
    texlive-binaries \
    texlive-latex-base \
    texlive-xetex \
    context \
    curl \
    maven2 \
    ant \
    flashplugin-installer \
    chromium-browser \
    apt-file \
    ncurses-term \
    clisp \
    aptitude \
    dkms \
    libmotif4 \
    samba \
    compizconfig-settings-manager \
    latex-xcolor \
    txt2tags \
    ocaml-interp \
    rubygems \
    markdown \
    texlive-fonts-recommended \
    texlive-fonts-extra \
    plt-scheme \
    netpbm \
    gimp \
    ufraw \
    emacs \
    winbind \
    mono-devel

# For 'ab' some concurrent HTTP request stuff?
apt-get install apache2-utils

# Remote Desktop server, to connect from windows boxes
apt-get install xrdp

# Wireshark networking utility
apt-get install wireshark

# Ruby stuff
gem install jekyll rdiscount --http-proxy $http_proxy

