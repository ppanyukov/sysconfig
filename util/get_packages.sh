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
    emacs \
    winbind \
    mono-devel

# Remote Desktop server, to connect from windows boxes
apt-get install xrdp

# Ruby stuff
gem install jekyll rdiscount --http-proxy $http_proxy

