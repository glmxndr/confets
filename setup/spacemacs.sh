#!/bin/bash


if [ -f ~/.emacs.d/spacemacs.mk ]; then
  echo "Emacs already there"
  exit 1
fi
if ! [ -x "$(command -v git)" ]; then
  echo "You may need git..."
  exit 1
fi

cd "$(dirname "$0")"
echo "Positioned in $(pwd)"

echo "Cloning spacemacs..."
mv -fb ~/.emacs.d ~/.emacs.d.bak
git clone git@github.com:syl20bnr/spacemacs.git ~/.emacs.d

echo "Setting .spacemacs"
mv -fb ~/.spacemacs ~/.spacemacs.bak
ln -s $(realpath ../.spacemacs) ~/.spacemacs

echo "Done."
