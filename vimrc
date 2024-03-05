set nocompatible
set exrc
filetype off

call plug#begin('~/.vim/plugged')

Plug 'vim-airline/vim-airline'
Plug 'easymotion/vim-easymotion'
Plug 'tpope/vim-surround'
Plug 'tpope/vim-fugitive'
Plug 'editorconfig/editorconfig-vim'
Plug 'rust-lang/rust.vim'
Plug 'neoclide/coc-highlight'
" Plug 'ghifarit53/tokyonight-vim' " It has already been installed manually. Uncomment and run :PlugInstall to install
" Plug 'sheerun/vim-polyglot' " It has already been installed manually. Uncomment and run :PlugInstall to install.

call plug#end()

set termguicolors

" T O K Y O  N I G H T
let g:tokyonight_style = 'night' " Available values: night, storm
let g:tokyonight_enable_italic = 1
let g:tokyonight_transparent_background = 0 " Available values: 0 (default), 1
let g:tokyonight_menu_selection_background = 'green' " Available values: 'green', 'red', 'blue'
let g:tokyonight_cursor = 'auto' " Available values: 'auto', 'red', 'green', 'blue'
let g:tokyonight_current_word = 'grey background' " Some plugins can highlight the word under current cursor(for example neoclide/coc-highlight), you can use this option to control their behavior. Available values: 'bold', 'underline', 'italic', 'grey background'

" Lightline & Airline
""
""This theme also has support for lightline as well as airline.
""To enable lightline support:
let g:lightline = {'colorscheme' : 'tokyonight'}

" To enable airline support:
let g:airline_theme = "tokyonight"

colorscheme tokyonight

" Required by the phpfolding.vim plugin
filetype plugin on
	
	map <F5> <Esc>:EnableFastPHPFolds<Cr>
	map <F6> <Esc>:EnablePHPFolds<Cr>
	map <F7> <Esc>:DisablePHPFolds<Cr>

" Automatically detect file types.
filetype plugin indent on

syntax on

" Case insentive command autocomplete
augroup dynamic_smartcase
  autocmd!
  autocmd CmdLineEnter : set nosmartcase
  autocmd CmdLineLeave : set smartcase
augroup END

if has('gui_running')
  set ts=2 sw=2 et
  set guioptions=egmrt
  set guifont=Menlo:h12
endif

" Always show the signcolumn, so our buffers doesn't shift on errors
autocmd BufRead,BufNewFile * setlocal signcolumn=yes
autocmd FileType nerdtree setlocal signcolumn=no

" UI
set ruler          " Ruler on
set nu             " Line numbers on
set nowrap         " Line wrapping off
set laststatus=2   " Always show the statusline
set cmdheight=2    " Make the command area two lines high
set encoding=utf-8
set background=dark
set updatetime=100

" Visual
set showmatch   " Show matching brackets.
set matchtime=2 " How many tenths of a second to blink
set list " Show invisible characters
" Don't give |ins-completion-menu| messages
set shortmess+=c

" Behaviors
set autoread           " Automatically reload changes if detected
set wildmenu           " Turn on WiLd menu
set hidden             " Change buffer - without saving
set history=768        " Number of things to remember in history.
set cf                 " Enable error files & error jumping.
set autowrite          " Writes on make/shell commands
set timeoutlen=350     " Time to wait for a command (after leader for example)
set foldlevelstart=99  " Remove folds
set formatoptions=crql
set iskeyword+=$,@     " Add extra characters that are valid parts of variables
set completeopt-=preview "Disables preview

" Text Format
set tabstop=2
set backspace=2  " Delete everything with backspace
set shiftwidth=2 " Tabs under smart indent
set cindent
set autoindent
set smarttab
set expandtab

" Searching
set ignorecase " Case insensitive search
set smartcase  " Non-case sensitive search
set incsearch
set hlsearch
