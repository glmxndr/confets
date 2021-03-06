#! /usr/bin/env bash

# Install pathogen
mkdir -p ~/.vim/autoload ~/.vim/bundle
curl -LSso ~/.vim/autoload/pathogen.vim https://tpo.pe/pathogen.vim

# Status lines
git clone https://github.com/vim-airline/vim-airline ~/.vim/bundle/vim-airline
git clone https://github.com/vim-airline/vim-airline-themes ~/.vim/bundle/vim-airline-themes
git clone https://github.com/edkolev/tmuxline.vim ~/.vim/bundle/tmuxline.vim

# Color scheme
git clone https://github.com/morhetz/gruvbox.git ~/.vim/bundle/gruvbox

# Syntastic
git clone --depth=1 https://github.com/vim-syntastic/syntastic.git ~/.vim/bundle/syntastic

# Idris
git clone https://github.com/idris-hackers/idris-vim.git ~/.vim/bundle/idris-vim

