#!/bin/sh

mkdir tmp
cd tmp

if [ ! -f "Alacritty-v0.3.3-ubuntu_18_04_amd64.deb" ]; then
  wget https://github.com/jwilm/alacritty/releases/download/v0.3.3/Alacritty-v0.3.3-ubuntu_18_04_amd64.deb
fi
sudo dpkg -i Alacritty-v0.3.3-ubuntu_18_04_amd64.deb


if [ ! -f "nvim.appimage" ]; then
  wget https://github.com/neovim/neovim/releases/download/v0.3.8/nvim.appimage
  chmod +x nvim.appimage
fi
sudo cp ./nvim.appimage /usr/local/bin/nvim
sudo ln -s /usr/local/bin/nvim /usr/bin/vim

sudo apt install zsh zsh-antigen && \
sudo apt install silversearcher-ag ranger && \
sudo apt install mycli && \
sudo apt install tig && \
sudo apt install glances && \
sudo apt install httpie jq && \

if [ ! -f "fpp.0.8.2.tar.gz" ]; then
  wget https://github.com/facebook/PathPicker/releases/download/0.8.2/fpp.0.8.2.tar.gz 
  mkdir fpp
  cd fpp
  tar -xf ../fpp.0.8.2.tar.gz
  cd ..
fi
sudo mkdir -p /usr/local/bin/fpp-0.8.2
sudo cp fpp/fpp /usr/local/bin/fpp-0.8.2
sudo cp -r fpp/src /usr/local/bin/fpp-0.8.2/src
sudo ln -s /usr/local/bin/fpp-0.8.2/fpp /usr/local/bin/fpp

if [ ! -f "hub-linux-amd64-2.12.3.tgz" ]; then
  wget https://github.com/github/hub/releases/download/v2.12.3/hub-linux-amd64-2.12.3.tgz
  tar -xf hub-linux-amd64-2.12.3.tgz 
fi
cd hub-linux-amd64-2.12.3
cp etc/hub.zsh_completion ~/.zsh/completions/_hub
sudo cp -r share /usr/local
chmod +x bin/hub
sudo cp bin/hub /usr/local/bin/hub
cd ..

if [ ! -f "2.9a.tar.gz" ]; then
  wget https://github.com/tmux/tmux/archive/2.9a.tar.gz 
  tar -xf 2.9a.tar.gz
fi
sudo apt install automake
sudo apt install libevent-2.1-6 libevent-dev
sudo apt install libncurses5 libncurses5-dev
cd tmux-2.9a
sh ./autogen.sh
./configure && make
sudo make install
cd ..

sudo apt install ruby
sudo gem install tmuxinator

cd ..

echo ""
echo           "===================================="
echo ""
echo "\033[1;32mSuccessfully installed all software!\033[m"
echo ""
echo           "===================================="
echo ""

