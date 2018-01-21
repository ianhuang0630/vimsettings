execute pathogen#infect()
syntax on
filetype plugin indent on


" From https://github.com/VundleVim/Vundle.vim

"set nocompatible              " be iMproved, required
"filetype off                  " required

" set the runtime path to include Vundle and initialize
" set rtp+=~/.vim/bundle/Vundle.vim
" call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
"Plugin 'VundleVim/Vundle.vim'

" PLUGINS
"Plugin 'sonph/onehalf', {'rtp': 'vim/'}

"call vundle#end()
"filetype plugin indent on



syntax enable
set hidden
set history=100
set number
" set background=dark

if (has("nvim"))
  "For Neovim 1.1.3 and 0.1.4 < https://github.com/neovim/neovim/pull/2198 >
  let $NVIM_TUI_ENABLE_TRUE_COLOR=1
endif

if (has ("termguicolors"))
    set termguicolors
endif

" from https://hamberg.no/erlend/posts/2014-03-09-change-vim-cursor-in-iterm.html
" Change cursor shape between insert and normal mode in iTerm2.app
if $TERM_PROGRAM =~ "iTerm"
    let &t_SI = "\<Esc>]50;CursorShape=1\x7" " Vertical bar in insert mode
    let &t_EI = "\<Esc>]50;CursorShape=0\x7" " Block in normal mode
endif

"let g:ligthline = {'colorscheme': 'tender'}
let g:airline_theme = 'gruvbox'
let g:airline_powerline_fonts = 1
set t_Co=257

"if (has("termguicolors"))
"    set termguicolors
"endif
" colorscheme onehalfdark
colorscheme gruvbox 
map rr :source ~/.vimrc

let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#left_sep = ' '
let g:airline#extensions#tabline#left_alt_sep = '|'


"set backspace=indent,eol,start
set backspace=indent,eol,start

set clipboard=unnamedplus

inoremap <C-b> <Left>
inoremap <C-f> <Right>
inoremap <C-p> <Up>
inoremap <C-n> <Down>
inoremap <C-e> <C-o>A
inoremap <C-a> <C-o>I
inoremap <C-d> <Del>
inoremap <C-z> <C-o>u
inoremap <C-y> <C-o>.

nnoremap <C-b> h
nnoremap <C-f> l
nnoremap <C-p> k
nnoremap <C-n> j
nnoremap <C-c> yy
nnoremap <C-v> p

" Moving between windows and tab  
nnoremap <C-Right> gt
nnoremap <C-Left> gT

nnoremap <C-W><Down> <C-W>j
nnoremap <C-W><Up> <C-W>k
nnoremap <C-W><Right> <C-W>l
nnoremap <C-W><Left> <C-W>h

vnoremap <C-b> <Left>
vnoremap <C-f> <Right>
vnoremap <C-p> <Up>
vnoremap <C-n> <Down>


set splitright
set splitbelow
set showcmd

set autoindent
set smartindent
set smarttab
set shiftwidth=4
set softtabstop=4
set tabstop=4
set expandtab

set nowrap
set modeline

" For the line to be highlighted

set cursorline


