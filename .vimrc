set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'
Plugin 'tpope/vim-commentary'
Plugin 'digitaltoad/vim-jade'
Plugin 'Valloric/YouCompleteMe'

call vundle#end()            " required
filetype plugin indent on    " required

"set term=ansi
colorscheme desert

if has("multi_byte")
  if &termencoding == ""
    let &termencoding = &encoding
  endif
  set encoding=utf-8
  setglobal fileencoding=utf-8
  "setglobal bomb
  set fileencodings=ucs-bom,utf-8,latin1
endif

set backspace=2
set whichwrap+=<,>,h,l
set cmdheight=2
syntax enable

" sets text white, background cyan
hi User1 ctermbg=white ctermfg=black

set laststatus=2        " adds the status bar
set statusline=%1*      " set colour to User1
set statusline+=%<%F    " full path
set statusline+=\ %m    " modified flag
set statusline+=%=      " right align
set statusline+=%5l     " current line
set statusline+=/%L     " total lines
set statusline+=\ %4v   " current column
set statusline+=\ \ %P  " percent through file

set incsearch   " incremental search (like google)
set hlsearch    " highlights all occurences (type :noh to unhighlight)
set showmatch   " shows matching brackets
set number      " line numbers
set ignorecase  " ignores case in searches, can add \C before term to make case sensitive

set expandtab   " use spaces instead of tab
set shiftwidth=2
set tabstop=2   " 1 tab is 4 spaces
set autoindent  " copies indent from previous line
set smartindent " be smart forever

set backupdir=~/.vim/tmp,.
set directory=~/.vim/tmp,.

:imap ;; <Esc>
