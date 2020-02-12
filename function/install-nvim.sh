#/bin/bash
#sudo add-apt-repository ppa:neovim-ppa/stable
#sudo apt update
#sudo apt install -y neovim
sudo apt install cmake automake libtool libtool-bin gettext
cd ~/Downloads
git clone https://github.com/neovim/neovim.git
cd neovim
make -j CMAKE_BUILD_TYPE=RelWithDebInfo
sudo make install
pip3 install --user neovim
