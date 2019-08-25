#!/bin/zsh

CUR_DIR=.
TARGET_DIR=~

mkdir -p $TARGET_DIR/.config/alacritty
mkdir -p $TARGET_DIR/.config/nvim
mkdir -p $TARGET_DIR/.config/tmuxinator
mkdir -p $TARGET_DIR/.zsh/completions

cp $CUR_DIR/zsh/.zshrc $TARGET_DIR/.zshrc
cp $CUR_DIR/tmux/.tmux.conf.local $TARGET_DIR/.tmux.conf.local
cp $CUR_DIR/alacritty/alacritty.yml $TARGET_DIR/.config/alacritty/alacritty.yml
cp $CUR_DIR/nvim/init.vim $TARGET_DIR/.config/nvim/init.vim
cp $CUR_DIR/mycli/.myclirc $TARGET_DIR/.myclirc
cp $CUR_DIR/start-workspace.sh $TARGET_DIR/start-workspace.sh
cp $CUR_DIR/tmuxinator/* $TARGET_DIR/.config/tmuxinator

if [ ! -d $TARGET_DIR/.config/nvim/bundle/Vundle.vim ]; then
  git clone https://github.com/VundleVim/Vundle.vim.git $TARGET_DIR/.config/nvim/bundle/Vundle.vim
fi

vim +PluginInstall +qall

