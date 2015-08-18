FROM ubuntu:14.04.3

RUN apt-get update

# Dev utilities
RUN apt-get install -y \
    wget

RUN apt-get install -y \
    curl

RUN apt-get install -y \
    git

RUN apt-get install -y \
    vim

# Installs several packages required to buid some tools from source
# Some pacakges: cpp, g++, make, man, libc-dev, libgcc-dev
RUN apt-get install -y \
    build-essential

RUN echo "\" diogogmt vim's config \n\
set number \n\
set tabstop=2 \n\
set shiftwidth=2 \n\
set expandtab \n\
syntax enable \n\
set background=dark \n\
:syntax on \n\
set clipboard=unnamedplus \n\
:set term=builtin_ansi \n\
" > ~/.vimrc

