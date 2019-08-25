#!/bin/zsh

TARGET_DIR="."

mkdir $TARGET_DIR/zsh
mkdir $TARGET_DIR/tmux
mkdir $TARGET_DIR/alacritty
mkdir $TARGET_DIR/nvim
mkdir $TARGET_DIR/mycli
mkdir $TARGET_DIR/tmuxinator

cp ~/.zshrc $TARGET_DIR/zsh
cp ~/.tmux.conf.local $TARGET_DIR/tmux
cp ~/.config/alacritty/alacritty.yml $TARGET_DIR/alacritty
cp ~/.config/nvim/init.vim $TARGET_DIR/nvim
cp ~/.myclirc $TARGET_DIR/mycli
cp ~/start-workspace.sh $TARGET_DIR
cp ~/.config/tmuxinator/* $TARGET_DIR/tmuxinator

