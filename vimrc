execute pathogen#infect()

set nocompatible              " be iMproved, required
filetype off                  " required

" no swp files
set noswapfile

"Colorscheme
syntax on
set background=dark
set t_Co=256
let base16colorspace=256

" Highlight Whitespaces
highlight ExtraWhitespace ctermbg=red guibg=red
match ExtraWhitespace /\s\+$/
autocmd BufWinEnter * match ExtraWhitespace /\s\+$/
autocmd InsertEnter * match ExtraWhitespace /\s\+\%#\@<!$/
autocmd InsertLeave * match ExtraWhitespace /\s\+$/
autocmd BufWinLeave * call clearmatches()

" Indent Settings
set shiftwidth=2
set softtabstop=2
set expandtab
set autoindent
filetype plugin indent on

" 80 & 90 Column
:set textwidth=90
:set textwidth=80
:set colorcolumn=+1

" PLUGINS SETUP

  " Runs CtrlP Buffer
  map <Leader>b :CtrlPBuffer<CR>

  " Call Emmet with ctrl+,,
  let g:user_emmet_leader_key=','
