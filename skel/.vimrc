call plug#begin('~/.vim/plugged')
Plug 'fatih/vim-go'
Plug 'scrooloose/nerdtree'
Plug 'rust-lang/rust.vim'
Plug 'altercation/vim-colors-solarized'
Plug 'majutsushi/tagbar'
Plug 'vim-scripts/LustyExplorer'
call plug#end()

" Color settings.
if !has("gui_running")
    "set t_Co=256
    set term=xterm-256color
endif

syntax enable
set background=dark
colorscheme solarized

highlight Comment cterm=italic

" This will sync the clipboard across all vim instances.
set clipboard=unnamedplus

setlocal spell spelllang=en_us

set hidden
set spell!

set viminfo='1000,f1,\"500,:100,/100

set nocompatible
set ts=4
set shiftwidth=4
set showmatch
set expandtab

set colorcolumn=80
set backspace=indent,eol,start

set vb t_vb=
set number

set novb

set autoindent
set encoding=utf-8
set ttyfast
set ruler
set laststatus=2

set ignorecase
set smartcase
set nogdefault
set incsearch
set showmatch
set hlsearch
set noedcompatible

"map <tab> <C-w>w

filetype off
filetype plugin indent on

let mapleader='\'

nnoremap <silent> <leader>t :NERDTreeToggle <CR>
nnoremap <silent> <leader>b :LustyBufferExplorer <CR>
nnoremap <silent> <leader>g :LustyBufferGrep <CR>
nnoremap <silent> <leader>n :set nonumber! <CR>
nnoremap <silent> <leader>s :set spell!<CR>
nnoremap <silent> <leader>w :set nowrap! <CR>
nnoremap <silent> <leader>l :set list! <CR>

nnoremap <silent> , :vertical resize -5<cr>
nnoremap <silent> . :vertical resize +5<cr>
nnoremap <silent> > :resize +5<cr>
nnoremap <silent> < :resize -5<cr>

noremap <Up> <nop>
noremap <Down> <nop>
noremap <Left> <nop>
noremap <Right> <nop>

imap <up> <nop>
imap <down> <nop>
imap <left> <nop>
imap <right> <nop>

"vim-go stuff
let g:go_fmt_command = "goimports"
let g:go_highlight_functions = 1
let g:go_highlight_methods = 1
let g:go_highlight_fields = 1
let g:go_highlight_types = 1
let g:go_highlight_operators = 1
let g:go_highlight_build_constraints = 1

" Remove trailing whtie space.
function! <SID>StripTrailingWhitespaces()
    let l = line(".")
    let c = col(".")
    %s/\s\+$//e
    call cursor(l, c)
endfun

fun! TrimWhitespace()
    let l:save = winsaveview()
    %s/\s\+$//e
    call winrestview(l:save)
endfun

autocmd BufWritePre *.h,*.c,*.java,*.go,*.cpp,*.cc :call <SID>StripTrailingWhitespaces()
autocmd BufWritePre * if &ft =~ 'sh\|perl\|python' | :call <SID>StripTrailingWhitespaces() | endif
autocmd FileType sh,perl,python  :call <SID>StripTrailingWhitespaces()


