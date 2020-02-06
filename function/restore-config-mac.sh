#/bin/bash

# copy to backup-mac first
cp ../backup/vimrc.bak ../backup-mac/vimrc.bak
cp ../backup/tmux.conf.bak ../backup-mac/tmux.conf.bak
cp ../backup/zshrc.conf.bak ../backup-mac/zshrc.bak
cp ../backup/aliases.bak ../backup-mac/aliases.bak
cp ../backup/ycm_extra_conf.py ../backup-mac/ycm_extra_conf.py
cp ../backup/init.vim ../backup-mac/init.vim.bak
# edit the backup-mac file
sed -i '' 's/\/home/\/Users/g' ../backup-mac/*

cp ../backup-mac/vimrc.bak ~/.vimrc
cp ../backup-mac/tmux.conf.bak ~/.tmux.conf
cp ../backup-mac/zshrc.bak ~/.zshrc
cp ../backup-mac/aliases.bak ~/.aliases
cp ../backup-mac/ycm_extra_conf.py ~/.vim/bundle/YouCompleteMe/.ycm_extra_conf.py
cp ../backup-mac/init.vim.bak ~/.config/nvim/init.vim
