
"set t_Co=256
"let g:solarized_termcolors=256
"set t_ut=

execute pathogen#infect()


syntax enable
set background=dark
colorscheme solarized

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

map <tab> <C-w>w

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

"vim-go stuff
let g:go_fmt_command = "goimports"
let g:go_highlight_functions = 1
let g:go_highlight_methods = 1
let g:go_highlight_structs = 1


" Remove trailing whtie space. 
function! <SID>StripTrailingWhitespaces()
    let l = line(".")
    let c = col(".")
    %s/\s\+$//e
    call cursor(l, c)
endfun

autocmd BufWritePre *.h,*.c,*.java,*.go,*.cpp,*.cc :call <SID>StripTrailingWhitespaces()
autocmd BufWritePre * if &ft =~ 'sh\|perl\|python' | :call <SID>StripTrailingWhitespaces() | endif
autocmd FileType sh,perl,python  :call <SID>StripTrailingWhitespaces()




