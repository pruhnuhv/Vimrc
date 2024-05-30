syntax on
filetype indent on " Enable file specific indentation
filetype plugin on " Enable plugins

call plug#begin('~/.vim/plugged')
Plug 'mhinz/vim-startify'
Plug 'arcticicestudio/nord-vim'
"Plug 'ycm-core/youcompleteme'
Plug 'maxboisvert/vim-simple-complete'
Plug 'tpope/vim-commentary'
Plug 'yggdroot/indentline'
Plug 'vim-airline/vim-airline'
Plug 'preservim/nerdtree'
Plug 'sheerun/vim-polyglot'
Plug 'eslint/eslint'
Plug 'w0rp/ale'
Plug 'vhda/verilog_systemverilog.vim'
call plug#end()

if &term =~ '^tmux'
  let &t_BE="\<Esc>[?2004h"
  let &t_BD="\<Esc>[?2004l"
  let &t_PS="\<Esc>[200~"
  let &t_PE="\<Esc>[201~"
endif

"use system clipboard
set clipboard=unnamedplus

let g:ale_sign_error = '❌'
let g:ale_sign_warning = '⚠️'
let g:ale_fix_on_save = 1
let g:ale_linters = {'verilog_systemverilog' : ['verilator'],}
let g:python_highlight_space_errors = 0

" don't let NERDTree be the only open tab
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif

" set syntax to verilog for .v files
" autocmd BufNewFile,BufRead *.v,*.vs set syntax=verilog
" autocmd BufNewFile,BufRead *.sv set syntax=systemverilog

set title
" Tab == 2 spaces
set tabstop=2 " Number of visual spaces per TAB.
set softtabstop=2 " Number of spaces per TAB while editing.
set shiftwidth=2 " Number of spaces when indenting using >
set expandtab " Expand to 4 spaces when you press TAB.
set smarttab " Navigate by a TAB's width.
set autoindent " Automatically indent lines while editing.

" Line Numbering is important
set number

" Code Folding
set foldmethod=manual
set foldcolumn=1

" Splitting Panes
set splitright 
set splitbelow 

" Efficient Searching
set incsearch " Dynamically search while typing characters.
set hlsearch " Highlight occurences.
set ignorecase " Ignore case while searching with lowercase characters.
set smartcase " Check for case when using mixed case.

set wildmenu " Wildmenu for autocomplete in command mode.

" Keybindings to go back to normal mode. Escape is too far.
inoremap jk <esc>

" Run Python files
autocmd filetype python nnoremap <buffer> <F5> :w<CR>:!clear;python3 %<CR>

nnoremap <esc> :noh<return><esc>
nnoremap <esc>^[ <esc>^[

" Colorscheme is the basic nord currently.
 colorscheme nord

hi Visual cterm=NONE ctermbg=cyan   ctermfg=black
hi Search cterm=NONE ctermbg=yellow ctermfg=black
