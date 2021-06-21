filetype plugin indent on
set encoding=UTF-8
set viminfo='1000,f1 " Preserve marks (upper case/number only, see https://stackoverflow.com/questions/8958047/in-vim-is-there-a-way-to-save-bookmarks-between-sessions)
" Folding configs
" set foldmethod=syntax
set foldnestmax=20
set foldlevelstart=1

set mouse=a                                     " Enable mouse
set number                                      " Show line numbers
set showmatch                                   " Show matching brackets
set smarttab                                    " Enable smarttab
set incsearch                                   " Incremental search
set noswapfile                                  " Do not create swp file
set cursorline                                  " highlight current line
set laststatus=2                                " Airline
" set backspace=indent,eol,start                  " Backspace for dummies
set ignorecase                                  " Case insensitive search
set smartcase                                   " Case sensitive when uc present
set wildmenu                                    " Show list instead of just completing
set wildmode=list:longest,full                  " Command <Tab> completion, list matches, then longest common part, then all.
set listchars=tab:›\ ,trail:•,extends:#,nbsp:.  " Highlight problematic whitespace
set fileformat=unix                             " UNIX fileformat
" set endofline                                   " Newline at the end of file
set autoread                                    " Autoreload changes to file
set noundofile                                  " Do not create undo files
set undodir=~/.vim/undodir                      " Store undo files in a directory
set tabstop=2                                   " Two space indentation
set shiftwidth=2                                " Number of space during (auto)indent
set expandtab                                   " Use spaces for tabs
set autoindent                                  " Copies indent from current line to next line
set smartindent                                 " Copies indent from current line to next line
" set nobackup
set directory=~/.vim/backup                     " Move .swp files to home directory
set number                                      " enable showing of numbers
set relativenumber                              " relative numbers for better navigation
set splitbelow                                  " Add new splits on right/below existing.
set splitright
set lazyredraw                                  " Redraw only when needed.
set linebreak                                   " Wrap lines at better places.
set hidden                                      " Allow hidden buffers with unsaved content.
set nostartofline                               " Don't move cursor to start of line after various commands.
set wildignore+=.git/*,*.swp,*.swo              " Ignore these in various cases.
set scrolloff=8                                 " Start scrolling when certain distance from edges of window.
set sidescrolloff=15
set sidescroll=1
set suffixesadd+=.js                            " Allow use of `gf` for relative imports in JS.
set iskeyword+=-                                " Count '-' as part of a word; useful for CSS in particular.
set modeline                                    " Allow modeline settings.
set modelines=50                                " TODO: Apparently insecure sometimes.
set encoding=utf-8                              " sane text files
set softtabstop=2                               " sane editing
set hlsearch
set guifont=Anonymous\ Pro\ for\ Powerline\ 11  " Default font settings

syntax on

" set synmaxcol=128
set colorcolumn=120
" syntax sync minlines=256

let g:python3_host_prog = "/usr/local/bin/python3" " Path for python

:setlocal spell spelllang=ru_yo,en_us

"Mode Settings
if &term =~ '^xterm'
  " normal mode
  let &t_EI .= "\<Esc>[0 q"
  " insert mode
  let &t_SI .= "\<Esc>[6 q"
endif
