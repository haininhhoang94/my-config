" Beginning and End of Line without Insert
" noremap <S-h> 0
" noremap <S-l> $

" Set tab
"
" nnoremap <C-t> :tabnew <CR>
" nnoremap <S-Right> :tabn <CR>
" nnoremap <C><Tab> :tabn <CR>
" nnoremap <S-Left> :tabp <CR>
" TAB in general mode will move to text buffer
nnoremap <silent> <TAB> :bnext<CR>
" SHIFT-TAB will go back
nnoremap <silent> <S-TAB> :bprevious<CR>"

" Refresh source init.vim
nmap <leader>rr :so ~/.config/nvim/init.vim<CR>

" This session is for disable arrowkey in normal mode
noremap <Up> <NOP>
noremap <Down> <NOP>
noremap <Left> <NOP>
noremap <Right> <NOP>

" This part is for Split Navigation
nnoremap <C-J> <C-W><C-J>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-L> <C-W><C-L>
nnoremap <C-H> <C-W><C-H>

" Insert newline without entering insert mode
nmap <C-o> O<Esc>
nmap <CR> o<Esc>

" For save and quit
noremap <C-s> :w<CR>
noremap <C-w> :wq!<CR>
noremap <leader>qq :q!<CR>
