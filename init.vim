"" GENERAL OPTIONS --------------------------------------
filetype indent on " Enable file-type specific indentation

filetype plugin on " Enable plugins

call plug#begin('~/.vim/plugged')
Plug 'mhinz/vim-startify'
Plug 'arcticicestudio/nord-vim'
Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'tpope/vim-commentary'
Plug 'yggdroot/indentline'
Plug 'vim-airline/vim-airline'
Plug 'preservim/nerdtree'
call plug#end()

" NERDTree shouldn't end up being the only open vim tab
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif

syntax on

set title

" Tab == 4 spaces
set tabstop=4 " Number of visual spaces per TAB.
set softtabstop=4 " Number of spaces per TAB while editing.
set expandtab " Expand to 4 spaces when you press TAB.
set smarttab " Navigate by a TAB's width.
set autoindent " Automatically indent lines while editing.

" Line Numbering is important
set number " Show line number
"set relativenumber " Show relative numbers, currently commented out

" Code Folding
set foldmethod=indent " Folding based on indentation. 
set foldlevelstart=10 " Fold only long blocks of code.
set foldnestmax=10 " Folds can be nested, this ensures max 10 nested folds.

" Splitting Panes
set splitright " Open a new vertical split on the right 
set splitbelow " Open a new vertical split below. 

" Efficient Searching
set incsearch " Dynamically search while typing characters.
set hlsearch " Highlight occurences.
set ignorecase " Ignore case while searching with lowercase characters.
set smartcase " Check for case when using mixed case.

set wildmenu " Wildmenu for autocomplete in command mode.


" Keybindings to go back to normal mode. Escape is too far.
inoremap jk <esc>

" Navigating splits, currently commented out.
"nnoremap <C-J> <C-W><C-J>
"nnoremap <C-K> <C-W><C-K>
"nnoremap <C-L> <C-W><C-L>
"nnoremap <C-H> <C-W><C-H>

" Hardcode, turn  off arrow keys in normal mode   
noremap <Up> <NOP>
noremap <Down> <NOP>
noremap <Left> <NOP>
noremap <Right> <NOP>

" Code folding
"nnoremap <space> za

" Run Python files
autocmd filetype python nnoremap <buffer> <F5> :w<CR>:!clear;python3 %<CR>

" Run Nodejs files
autocmd filetype javascript nnoremap <buffer> <F5> :w<CR>:!clear;node %<CR>


" Colorscheme is the basic nord currently.
colorscheme nord
