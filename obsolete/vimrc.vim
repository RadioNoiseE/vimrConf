" Text Editor Config Extd "
" 文本編輯軟體配置　缺省給"
" Maintainer: Jing Huang (RadioNoiseE) "
" 維護者：黄京 "

if v:progname =~? "evim"
  finish
endif
if exists('skip_defaults_vim')
  finish
endif
if &compatible
  set nocompatible
endif
silent! while 0
  set nocompatible
silent! endwhile
set backspace=indent,eol,start
set history=200
set ruler
set showcmd
set wildmenu
set ttimeout
set ttimeoutlen=100
set display=truncate
set scrolloff=5
if has('reltime')
  set incsearch
endif
set nrformats-=octal
if has('win32')
  set guioptions-=t
endif
map Q gq
sunmap Q
inoremap <C-U> <C-G>u<C-U>
if has('mouse')
  if &term =~ 'xterm'
    set mouse=a
  else
    set mouse=nvi
  endif
endif
if 1
  filetype plugin indent on
  augroup vimStartup
    au!
    autocmd BufReadPost *
      \ if line("'\"") >= 1 && line("'\"") <= line("$") && &ft !~# 'commit'
      \ |   exe "normal! g`\""
      \ | endif
  augroup END
  augroup vimHints
    au!
    autocmd CmdwinEnter *
	  \ echohl Todo | 
	  \ echo 'You discovered the command-line window! You can close it with ":q".' |
	  \ echohl None
  augroup END
endif
if &t_Co > 2 || has("gui_running")
  syntax on
  let c_comment_strings=1
endif
if !exists(":DiffOrig")
  command DiffOrig vert new | set bt=nofile | r ++edit # | 0d_ | diffthis
		  \ | wincmd p | diffthis
endif
if has('langmap') && exists('+langremap')
  set nolangremap
endif
set tabstop=4
set softtabstop=4
set shiftwidth=4
set expandtab
" set autoindent
" set smartindent 
set nu
set cursorline
set lazyredraw
set timeoutlen=500
let g:mapleader="\<Space>"
let g:which_key_map = {}
filetype plugin indent on
syntax enable
let g:vimtex_compiler_method = 'latexmk'
colorscheme everforest
set termguicolors
set completeopt+=menuone
set completeopt+=noinsert
let g:mucomplete#enable_auto_at_startup = 1
let g:mucomplete#can_complete = {}
let g:mucomplete#can_complete.tex = {'omni': { t -> t =~# g:vimtex#re#neocomplete . '$' } }
nnoremap <leader>C :MUcompleteAutoToggle<CR>
nnoremap <silent><leader> :<c-u>WhichKey'<Space>'<CR>
nnoremap <silent><localleader> :<c-u>WhichKey'\'<CR>
nnoremap <silent><c> :<c-u>WhichKey'<c>'<CR>
