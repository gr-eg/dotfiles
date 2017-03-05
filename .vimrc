" ========================================================================
" Vundle stuff
" ========================================================================
set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'
" ===========Start===============

Plugin 'ctrlpvim/ctrlp.vim'
Plugin 'vim-airline/vim-airline'

" Colors
Plugin 'nanotech/jellybeans.vim'

" ===========End===============
" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required

" ========================================================================
" My Config 
" ========================================================================

" Set Leader key to space
let mapleader = " "

" Turn on syntax highlighting
colorscheme jellybeans
syntax on                 " Enable syntax highlighting

set backspace=2   " Make backspace do you would expect
set ruler         " Always show the cursor position
set laststatus=2  " Always show status line.

" Soft tabs of 2 spaces
set tabstop=2
set shiftwidth=2
set shiftround
set expandtab

" Display extra whitespace
set list listchars=tab:»·,trail:·,nbsp:·

" Disable arrow keys
nnoremap <Left>  :echoe "Use h"<CR>
nnoremap <Right> :echoe "Use l"<CR>
nnoremap <Up>    :echoe "Use k"<CR>
nnoremap <Down>  :echoe "Use j"<CR>

" Open new split panes to right and bottom, which feels more natural
set splitbelow
set splitright

" Quicker window movement
nnoremap <C-j> <C-w>j " Move to to split below
nnoremap <C-k> <C-w>k " Move to the split above
nnoremap <C-h> gT     " Move to the previous buffer
nnoremap <C-l> gt     " Move to the next buffer

let g:ctrlp_prompt_mappings = {
    \ 'AcceptSelection("e")': ['<c-t>'],
    \ 'AcceptSelection("t")': ['<cr>', '<2-LeftMouse>'],
    \ }

" Switch between the last two files
nnoremap <leader><leader> <c-^>

" Exclude paths from ctrlp
set wildignore+=*/tmp/*,*.so,*.swp,*.zip

" Highlight the current line
set cursorline

" visual autocomplete for command menu
set wildmenu
