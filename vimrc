set nocompatible
" Plugins {{{1
filetype off

set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

" Plugin manager
Plugin 'VundleVim/Vundle.vim'

" motion for camelCasedWords using ,w ,b ,e
Plugin 'vim-scripts/camelcasemotion'

" motion using \\w, \\b
Plugin 'easymotion/vim-easymotion'

" Change/delete/add matching parens, quotes, ... using cs ds yss
Plugin 'tpope/vim-surround'

" . for repeating remapped commands from supported plugins
Plugin 'tpope/vim-repeat'

" convenient forward/backward commands using [,]
Plugin 'tpope/vim-unimpaired'

" Comment/uncomment using gc
Plugin 'tomtom/tcomment_vim'

" text object for function arguments
Plugin 'vim-scripts/argtextobj.vim'

" Highlight trailing whitespace
Plugin 'bronson/vim-trailing-whitespace'

" Fuzzy finder
Plugin 'ctrlpvim/ctrlp.vim'
" Use git to list files and ignore entries from .gitignore
let g:ctrlp_user_command = ['.git', 'cd %s && git ls-files -co --exclude-standard']

" better auto-completion
Plugin 'Valloric/YouCompleteMe'
" File browser + git support
Plugin 'scrooloose/nerdtree'
Plugin 'Xuyuanp/nerdtree-git-plugin'
" NERD tree config {{{2

" F2 to toggle NERD tree
nmap <F2> :NERDTreeToggle<CR>
" }}}

" xml/html plugins
Plugin 'gregsexton/MatchTag'
Plugin 'alvan/vim-closetag'
Plugin 'matchit.zip'

" colorschemes
Plugin 'vim-scripts/xoria256.vim'
Plugin 'altercation/vim-colors-solarized'

call vundle#end()

filetype plugin indent on
"}}}

" Options {{{

" show current mode
set showmode

" show line numbers relative to current line
set relativenumber

" show matching parens
set showmatch

" case insensitive matching if pattern is lowercase only
set ignorecase smartcase
set incsearch
" highlight matches
set hlsearch
" replace all matches in a line by default
set gdefault

" Indentation settings
set autoindent
set smartindent
set tabstop=4
set shiftwidth=4
set softtabstop=4
set expandtab

" Show tabs
set listchars=tab:▸\ 
set list

" break long lines in editor
set wrap linebreak
set showbreak=>

" see :h fo-table
set formatoptions+=roqn

" scroll to show at least 5 lines around current line
set scrolloff=5

" always show status line
set laststatus=2

" better tab-completion in command line
set wildmenu

colorscheme solarized
set background=light

" store undo/swap/etc files at central location
set undofile
set undodir=$HOME/.vim.undo
set directory=$HOME/.vim.swap
set backupdir=$HOME/.vim.backup

" }}}

" Key bindings {{{

" unhighlight search matches
nmap <silent> <leader>/ :nohl<cr>

" don't leave visual mode when increasing/decreasing indent
vnoremap < <gv
vnoremap > >gv
" }}}

" vim:fdm=marker
