if !exists('g:vscode')
    " VSCode Extension
else
    " Set Python Highlight, height of commandline, and shell location
    let g:python_highlight_all = 1
    set cmdheight=1
    set shell=/bin/sh
    set showtabline=2
    
    " "Some initial setting
    syntax on			" Turn on syntax coloring
    set number			" Line number
    set cursorline			" Set a line on the cursors
    set completeopt-=preview	" Turn off Preview/Scratch mode
    
    " Python location
    let g:python3_host_prog = expand('$HOME/anaconda3/envs/pyds/bin/python3.6')
    
    " Set line number and line number relative
    set number
    set relativenumber
    
    " Make tab 4 spaces
    set tabstop=8 softtabstop=0 expandtab shiftwidth=4 smarttab
    
    "Mode Settings
    let &t_SI.="\e[5 q" "SI = INSERT mode
    let &t_SR.="\e[4 q" "SR = REPLACE mode
    let &t_EI.="\e[1 q" "EI = NORMAL mode (ELSE)
    "
    ""Cursor settings:
    
    "  1 -> blinking block
    "  "  2 -> solid block 
    "  "  3 -> blinking underscore
    "  "  4 -> solid underscore
    "  "  5 -> blinking vertical bar
    "  "  6 -> solid vertical bar
    "
    
    " Sign for column width in Python
    set colorcolumn=80
    
    " This part is for setting Split Position
    set splitbelow
    set splitright
endif    
