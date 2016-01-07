#! /bin/bash
DOTFILES="${HOME}/.dotfiles"
git submodule update --init --recursive
shopt -s dotglob
for f in * 
do
    if [ "$f" == "bootstrap.sh" -o "$f" == ".git" -o "$f" == ".gitmodules" ]
    then
        continue
    fi
    ln -fs $DOTFILES/$f ~
done 
