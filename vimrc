set nocompatible
set exrc

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

