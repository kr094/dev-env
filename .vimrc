" Vim
" @author Kyle Ross <kr094@hotmail.com>

" Don't create .swp files in the working copy
set noswapfile

" TTY
set nottyfast
set lazyredraw

" Visual bell
set vb t_vb=

set nocompatible
syntax on
set bg=dark

set autoindent
set smartindent
set tabstop=4 softtabstop=0 expandtab shiftwidth=2 smarttab
" Move over the EOL for a windows feel
set virtualedit=onemore
set hlsearch
set ignorecase
set colorcolumn=120

" Persistent undo
set undofile
set undodir=$HOME/.vim/undo
set undolevels=1000
set undoreload=10000

" Persistent :b[uffers]
set viminfo^=%

" Spellchecker
set spell spelllang=en_us

" Save when switching buffers
set autowriteall

" Allow files without a name to be left in a hidden buffer
" Use case:
" grep 'stuff' -l | vim -
" Edit all these files in vim by using gf on each file name
set hidden

" Highlights
hi MatchParen cterm=bold ctermbg=8
hi Comment ctermfg=3
hi Todo ctermbg=none ctermfg=blue
hi Constant ctermfg=red
hi Identifier ctermfg=6

" Highlight spelling errors
hi clear SpellBad
hi SpellBad cterm=underline

""" Maps

" Use Ctrl-d as change inner word, don't put into paste buffer
map <C-d> "_ciw
imap <C-d> <esc><C-d>
noremap <C-f> <C-d>

" Shift blocks visually
vnoremap > >gv
vnoremap < <gv

" Disable change case in visual mode
vnoremap u <nop>
vnoremap U <nop>

" Disable man page lookup
map K <nop>

" ctrlp fuzzy file search like vscode
" http://ctrlpvim.github.io/ctrlp.vim/
set runtimepath^=~/.vim/bundle/ctrlp.vim
set wildignore+=*/app/node_modules/*,*/node_modules/*,*/docker/*
