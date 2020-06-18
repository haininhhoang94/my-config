" The following neovim configuration work with Neovim only, having no current
" plan to make it work to vim yet, since the authors doesn't like vim much
" Structure will be similar to
" https://github.com/scrapbird/dotfiles/blob/master/config/nvim/init.vim
"
let mapleader=","

set nocompatible

source $HOME/.config/nvim/plugins.vim
source $HOME/.config/nvim/general.vim
source $HOME/.config/nvim/keybinding.vim
source $HOME/.config/nvim/theme.vim
source $HOME/.config/nvim/funcs.vim
