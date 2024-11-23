
let leadermap = "\\"

" Initialize vim-plug plugin manager
call plug#begin('~/.vim/plugged')

" List your plugins here, e.g.
" Plug 'tpope/vim-sensible'

call plug#end()

call plug#begin('~/.vim/plugged')

" C++ and general development plugins
Plug 'Valloric/YouCompleteMe'          " Auto-completion
Plug 'scrooloose/nerdtree'             " File explorer
Plug 'tpope/vim-fugitive'              " Git integration
Plug 'vim-syntastic/syntastic'         " Syntax checking
Plug 'junegunn/fzf.vim'                " Fuzzy file finder
Plug 'vim-airline/vim-airline'         " Status line
Plug 'vim-airline/vim-airline-themes'  " Airline themes
Plug 'ycm-core/YouCompleteMe'          " Code completion and error highlighting
Plug 'neoclide/coc.nvim', {'branch': 'release'} " Advanced code completion (optional)
Plug 'ycm-core/YouCompleteMe'         " Code completion (advanced)
call plug#end()

 call plug#begin('~/.vim/plugged')
    Plug 'preservim/nerdtree'
 call plug#end()
  
" Map key to toggle NERDTree sidebar
nnoremap <C-n> :NERDTreeToggle<CR>

" Automatically close Vim if NERDTree is the last window
autocmd vimenter * if !argc() | NERDTree | endif
autocmd bufenter * if (winnr("$") == 1 && &filetype == "nerdtree") | q | endif


"call plug#begin('~/.vim/plugged')
"Plug 'crusoexia/vim-monokai'
"call plug#end()

call plug#begin('~/.vim/plugged')

" Plugin for Gruvbox colorscheme
Plug 'morhetz/gruvbox'

call plug#end()

" Set the default colorscheme
colorscheme gruvbox

" run cpp file

set background=dark  " or light, depending on your preference


" setting

set number
set relativenumber
" Enable syntax highlighting
syntax enable

" Enable file type detection and plugin support
filetype plugin indent on

" Set smart indentation for C++
set smartindent
set autoindent
set tabstop=4
set shiftwidth=4
set expandtab
set scrolloff=4

" Fast navigation and searching
set incsearch
set hlsearch

" Ignore case in searches (but be smart about it)
set ignorecase
set smartcase

" Enable fast I/O for competitive programming
autocmd FileType cpp setlocal expandtab tabstop=4 shiftwidth=4 smarttab

"keymap

nnoremap <C-n> :NERDTreeToggle<CR>

"open ner file 
nnoremap <leader>e :e<Space>
nnoremap <C-s> :w<CR>
inoremap jj <Esc>
nnoremap <leader>w :w!<CR>
nnoremap <leader>q :q!<CR>
nnoremap <leader>wq :wq!<CR>
            
" Keymap to compile and run C++ code
nnoremap <leader>r :w<CR>:!g++ % -o %:r && ./%:r<CR>
if has("nvim") || has("termguicolors")
  let &t_SI = "\e[6 q"  " Cursor for Insert mode (block)
  let &t_SR = "\e[4 q"  " Cursor for Replace mode (underline)
  let &t_EI = "\e[2 q"  " Cursor for Normal mode (block)
endif
call plug#begin('~/.vim/plugged')
Plug 'preservim/nerdtree'
call plug#end()
nmap <C-n> :NERDTreeToggle<CR>
         
" Enable filetype plugin and indentation
filetype plugin on
set smartindent

" Enable auto-pairing for quotes, parentheses, brackets, etc.
inoremap " ""<Left>
inoremap ' ''<Left>
inoremap ( ()<Left>
inoremap { {}<Left>
inoremap [ []<Left>

" For better handling of escaping and nested quotes/brackets
autocmd FileType * inoremap <buffer> " ""<Left>
autocmd FileType * inoremap <buffer> ' ''<Left>
autocmd FileType * inoremap <buffer> ( ()<Left>
autocmd FileType * inoremap <buffer> { {}<Left>
autocmd FileType * inoremap <buffer> [ []<Left>

" set template file 
nnoremap <leader>cpp :r ~/vim_templates/cpp_template.h<CR>  " Insert template with space + t
