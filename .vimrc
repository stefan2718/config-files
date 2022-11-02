set nocompatible              " be iMproved, required

call plug#begin('~/.vim/plugged')

Plug 'tpope/vim-commentary'
Plug 'alvan/vim-closetag'
Plug 'neoclide/coc.nvim', {'branch': 'release'}

call plug#end()

"set term=ansi
colorscheme desert

set statusline+=%=      " right align
set statusline+=%5l     " current line
set statusline+=/%L     " total lines
set statusline+=\ %4v   " current column
set statusline+=\ \ %P  " percent through file

set incsearch   " incremental search (like google)
set hlsearch    " highlights all occurences (type :noh to unhighlight)
set showmatch   " shows matching brackets
set relativenumber      " line numbers
set ignorecase  " ignores case in searches, can add \C before term to make case sensitive

set expandtab   " use spaces instead of tab
set shiftwidth=2
set tabstop=2   " 1 tab is 4 spaces
set autoindent  " copies indent from previous line
set smartindent " be smart forever

set backspace=indent,eol,start
set backupdir=~/.vim/tmp,.
set directory=~/.vim/tmp,.
set wildmenu
set wildmode=longest,list
set wildignore+=*.a,*.o
set wildignore+=*.bmp,*.gif,*.ico,*.jpg,*.png
set wildignore+=.DS_Store,.git,.hg,.svn
set wildignore+=*~,*.swp,*.tmp

" For vim-closetag
let g:closetag_filenames = "*.html,*.xhtml,*.xml"

:imap ;; <Esc>
