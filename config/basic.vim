set nocompatible            " disable compatibility to old-time vi
set showmatch               " show matching
set ignorecase              " case insensitive

set mouse=v                 " middle-click paste with
set mouse=a                 " enable mouse click

set hlsearch                " highlight search
set incsearch               " incremental search
set tabstop=2               " number of columns occupied by a tab
set softtabstop=2           " see multiple spaces as tabstops so <BS> does the right thing
set expandtab               " converts tabs to white space
set shiftwidth=2            " width for autoindents
set autoindent              " indent a new line the same amount as the line just typed
set number                  " add line numbers
"set wildmode=longest,list   " get bash-like tab completions
set cc=120                  " set an 80 column border for good coding style
filetype plugin indent on   "allow auto-indenting depending on file type
syntax off                   " syntax highlighting
set clipboard=unnamedplus   " using system clipboard
"filetype plugin on
set cursorline              " highlight current cursorline
set ttyfast                 " Speed up scrolling in Vim
"set spell                 " enable spell check (may need to download language package)
" set noswapfile            " disable creating swap file
" set backupdir=~/.cache/vim " Directory to store backup files.
set encoding=UTF-8
"set backspace=indent,eol,start

"colorscheme dracula
"colorscheme tokyonight-night

set title

set guifont=DroidSansMono_Nerd_Font:h11
set splitright
set splitbelow

autocmd InsertEnter * :set nonumber relativenumber
autocmd InsertLeave * :set number norelativenumber

augroup fmt
  autocmd!
  autocmd BufWritePre * undojoin | Neoformat
augroup END

"autocmd BufWritePre *.js Neoformat
"autocmd BufWritePre *.jsx Neoformat
"autocmd BufWritePre *.tsx Neoformat
"autocmd BufWritePre *.ts Neoformat
"autocmd BufWritePre *.css Neoformat
"autocmd BufWritePre *.scss Neoformat
"autocmd BufWritePre *.json Neoformat
"autocmd BufWritePre *.rs Neoformat
"autocmd BufWritePre *.go Neoformat
"
let g:python3_host_prog = "$HOME/.pyenv/shims/python"
