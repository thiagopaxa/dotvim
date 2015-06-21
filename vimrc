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

" Persistent Undo = 'undo forever'
if has('persistent_undo')
  set undodir=~/.vim/vimundo
  set undofile
  set undolevels=1000
  set undoreload=10000
endif

set encoding=utf-8
set et              " Troca tabs por espaços
set nu              " Mostra o número de linhas
set ai              " Faz o auto tab/auto indent
set cursorline      " Destaca a linha atual


" PLUGINS SETUP

  " Runs CtrlP Buffer
  map <Leader>b :CtrlPBuffer<CR>

  " Call Emmet with ctrl+,,
  let g:user_emmet_leader_key=','

  " Nertree shortcuts
  map <Leader>S <ESC>:NERDTreeToggle<CR>
  map <Leader>s <ESC>:NERDTreeFind<CR>
  let NERDTreeShowHidden=1

  " Matchmaker
  let g:matchmaker_enable_startup = 1
