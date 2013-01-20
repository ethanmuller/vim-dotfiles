""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" GENERAL CONFIG
""""""""""""""""""""""""""""""""""""""""""""""""""""""""

set number                      " Line numbers are good
set history=1000                " Store lots of :cmdline history
set showcmd                     " Show incomplete cmds down the bottom
set showmode                    " Show current mode down the bottom
set autoread                    " Reload files changed outside vim
set iskeyword+=-,$              " Include some nice characters in words
set hidden                      " Buffers can exist in the background without being in a window.
syntax on                       " Activate syntax highlighting
set ttimeoutlen=100             " Remove delay while escaping
color desert                    " Sexy theme, activate

""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Search Settings 
""""""""""""""""""""""""""""""""""""""""""""""""""""""""

set incsearch              " Find the next match as we type the search
set ignorecase smartcase   " Ignore case, unless capitals are used
set viminfo='100,f1        " Save up to 100 marks, enable capital marks


""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Directories
""""""""""""""""""""""""""""""""""""""""""""""""""""""""

set backupdir=~/.vim/backups//,.  " for backups

set undofile
set undodir=~/.vim/undos//,.      " for undos

set directory=~/.vim/swaps//,.    " for swaps

""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Formatting
""""""""""""""""""""""""""""""""""""""""""""""""""""""""

set autoindent
set smartindent
set smarttab
set expandtab
set shiftwidth=2
set softtabstop=2
set tabstop=2

if has("autocmd")
  filetype plugin indent on
endif

set nowrap       "Don't wrap lines
set linebreak    "Wrap lines at convenient points

set formatoptions-=cro

" Set weird filetypes
au! BufNewFile,BufRead *.cshtml set filetype=html


""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Folds
""""""""""""""""""""""""""""""""""""""""""""""""""""""""

set foldmethod=indent   "fold based on indent
set foldnestmax=3       "deepest fold is 3 levels
set nofoldenable        "dont fold by default

""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Completion
""""""""""""""""""""""""""""""""""""""""""""""""""""""""

set wildmode=list:longest
set wildmenu                "enable ctrl-n and ctrl-p to scroll thru matches
set wildignore=*.o,*.obj,*~,*.psd,*.jpg,*.png,*.ai "stuff to ignore when tab completing
set wildignore+=*vim/backups*
set wildignore+=*sass-cache*
set wildignore+=*DS_Store*
set wildignore+=vendor/rails/**
set wildignore+=vendor/cache/**
set wildignore+=*.gem
set wildignore+=log/**
set wildignore+=tmp/**
set wildignore+=*.png,*.jpg,*.gif

""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Scrolling
""""""""""""""""""""""""""""""""""""""""""""""""""""""""

set scrolloff=8         "Start scrolling when we're 8 lines away from margins
set sidescrolloff=15
set sidescroll=1

""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Statusline
""""""""""""""""""""""""""""""""""""""""""""""""""""""""

set laststatus=2   " Always show the statusline
set encoding=utf-8 " Necessary to show Unicode glyphs

set statusline=%t       "tail of the filename
set statusline+=%h      "help file flag
set statusline+=%m      "modified flag
set statusline+=%r      "read only flag
set statusline+=%y      "filetype
set statusline+=%=      "left/right separator
set statusline+=%c,     "cursor column
set statusline+=%l/%L   "cursor line/total lines
set statusline+=\ %P    "percent through file