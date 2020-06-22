" auto-install vim-plug
if empty(glob('~/.config/nvim/autoload/plug.vim'))
  silent !curl -fLo ~/.config/nvim/autoload/plug.vim --create-dirs
    \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
  "autocmd VimEnter * PlugInstall
  autocmd VimEnter * PlugInstall | source $MYVIMRC
endif

call plug#begin('~/.config/nvim/plugged')
" Add plugin here

if !exists('g:vscode')
    " Easy motion for VSCode
    Plug 'asvetliakov/vim-easymotion'

else
    " Git interface
    Plug 'tpope/vim-fugitive'
    Plug 'airblade/vim-gitgutter'

    " Combine with Tmux
    Plug 'christoomey/vim-tmux-navigator'
    Plug 'benmills/vimux'
        let g:VimuxResetSequence = ""       " Avoid send q C-U
        let g:VimuxUseNearest = 1
        let g:VimuxOrientation = "h"

    " File Manager/System/SearchFile
    Plug 'scrooloose/nerdtree'
        " Refresh NerdTree with button r
        nmap <Leader>r :NERDTreeFocus<cr>R<c-w><c-p>
        map <F3> :NERDTreeToggle<CR> 
        " Make NERDTree look beautiful
        let NERDTreeMinimalUI = 1
        let NERDTreeDirArrows = 1
        let g:NERDTreeDirArrowExpandable = '↠'
        let g:NERDTreeDirArrowCollapsible = '↡'
        let g:tagbar_iconchars = ['↠', '↡']
    Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all'  }
    Plug 'junegunn/fzf.vim'
        nnoremap <C-p> :Files<CR>
        nnoremap <C-f> :Ag<CR>
        let g:fzf_preview_window = 'right:40%'
    Plug 'liuchengxu/vim-which-key'

    " Snippets
    Plug 'SirVer/ultisnips' | Plug 'honza/vim-snippets'
        let g:UltiSnipsExpandTrigger="<s-tab>"                                            
        if !exists("g:UltiSnipsJumpForwardTrigger")
            " let g:UltiSnipsJumpForwardTrigger = "<s-tab>"
            let g:UltiSnipsJumpForwardTrigger = "<`>"
        endif

    " Skin and color scheme
    Plug 'vim-airline/vim-airline'
        " Enable tabline
        let g:airline#extensions#tabline#enabled = 1
        let g:airline#extensions#tabline#left_sep = ' '
        let g:airline#extensions#tabline#left_alt_sep = '|'
        let g:airline#extensions#tabline#right_sep = ''
        let g:airline#extensions#tabline#right_alt_sep = ''

        " Enable powerline fonts
        let g:airline_powerline_fonts = 1
        let g:airline_left_sep = ''
        let g:airline_right_sep = ''
    Plug 'luochen1990/rainbow'
        let g:rainbow_active = 1
    Plug 'tiagofumo/vim-nerdtree-syntax-highlight'
    Plug 'ryanoasis/vim-devicons'
    Plug 'joshdick/onedark.vim'
    Plug 'drewtempelmeyer/palenight.vim'
    Plug 'morhetz/gruvbox'
    Plug 'crusoexia/vim-monokai'

    " For faster coding style
    Plug 'terryma/vim-multiple-cursors'
    Plug 'tpope/vim-surround'
    Plug 'jiangmiao/auto-pairs'
    Plug 'scrooloose/nerdcommenter'
        " Add spaces after comment delimiters by default
        let g:NERDSpaceDelims = 1
    Plug 'machakann/vim-highlightedyank'
    Plug 'roxma/vim-tmux-clipboard'

    " Auto-completion/Suggestion
    Plug 'Shougo/deoplete.nvim', {'do': 'UpdateRemotePlugins'}
        let g:deoplete#enable_at_startup = 1
        "Autocomplete and cycle from top-to-bottom of suggestions using <Tab>.
        inoremap <expr> <tab> pumvisible() ? "\<c-n>" : "\<tab>"
    Plug 'vim-syntastic/syntastic'
    Plug 'dense-analysis/ale'
        " Set syntax highlighting
        let g:ale_linters = {
        	\ 'python': ['flake8', 'pylint'],
        	\ 'javascript': [ 'eslint' ],
        	\ }
    Plug 'zchee/deoplete-jedi'
        let g:jedi#completions_enabled = 0
        let g:jedi#use_splits_not_buffers = "right"

    " Syntax Language Specific
    " Python
    Plug 'nvie/vim-flake8'
    Plug 'Vimjas/vim-python-pep8-indent'
    Plug 'numirias/semshi', { 'do': ':UpdateRemotePlugins'  }
    Plug 'davidhalter/jedi-vim'


    " Python jupyter
    " Plug 'jupyter-vim/jupyter-vim'
        " let g:jupyter_mapkeys = 0
        " nnoremap <leader>ss :JupyterConnect<CR>
        " nnoremap <F4> :JupyterSendRange <CR>
        " nnoremap <F5> :JupyterSendCell<CR>
    Plug 'szymonmaszke/vimpyter'     
endif    
    
"Add Plug end here
call plug#end()
filetype plugin indent on
