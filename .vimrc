"set nocompatible
filetype off
syntax on
filetype plugin indent on

set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
Plugin 'VundleVim/Vundle.vim'
Plugin 'itchyny/lightline.vim'
Plugin 'preservim/nerdtree'
Plugin 'preservim/nerdcommenter'
Plugin 'sheerun/vim-polyglot'
"Plugin 'jiangmiao/auto-pairs'
Plugin 'wakatime/vim-wakatime'
Plugin 'vimwiki/vimwiki'
Plugin 'ap/vim-css-color'
Plugin 'vim-syntastic/syntastic'
Plugin 'tpope/vim-fugitive'
Plugin 'embark-theme/vim'
"Plugin 'arzg/vim-colors-xcode'
Plugin 'dylanaraps/wal.vim'
"Plugin 'morhetz/gruvbox'
"Plugin 'tpope/vim-commentary'
"Plugin 'alvan/vim-closetag'
"Plugin 'tpope/vim-surround'
"Plugin 'christoomey/vim-tmux-navigator'
call vundle#end()

"set rtp+=~/.vim/bundle/calender-vim/autoload/calender.vim

set matchpairs+=<:>
set ttyfast
set scrolloff=5
set wrap
set formatoptions=tcqrn1
set noshiftround
set tabstop=4
set shiftwidth=2

let mapleader=","

set number relativenumber

set encoding=utf-8

set noswapfile
set ignorecase

set splitbelow
set splitright

set foldmethod=indent
set foldlevel=99

"colorscheme
"set rtp+=~/.vim/colors
"colorscheme blossom
colorscheme wal

"nerdtree & nerdcommenter
map <C-n> :NERDTreeToggle<CR>
autocmd bufenter * if (winnr("$") == 1 && exists("b:NerdTree") && b:NERDTree.isTabTree()) | q | endif

let g:NERDSpaceDelims = 1  "add spaces after comment delimiters by default
let g:NERDCompactSexyComs= 1  "comact syntax for pretty multi-line comments
let g:NERDDefaultAlign = 'left' "align line wise comment delims flush left; not follow indents
let g:NERDTrimTrailingWhiteSpace = 1 "delete whitespaces when uncommenting


"tabs
nnoremap H gT
nnoremap L gt

"split pane switching
map <C-j> <C-w>j
map <C-h> <C-w>h
map <C-k> <C-w>k
map <C-l> <C-w>l

map <F7> <C-w>w

"shell
nnoremap <F5> :term<cr>
set shell=/usr/bin/zsh

set undolevels=1000
"set spell

"custom header for files
autocmd bufnewfile *.py 0r ~/.vim/headers/head.py
autocmd bufnewfile *.sh 0r ~/.vim/headers/head.sh
autocmd bufnewfile *.html,*.php 0r ~/.vim/headers/head.sh

" edit read-only (write protected) files
cnoremap w!! execute 'silent! write !sudo tee % >/dev/null' <bar> edit!

"vimwiki stuff

let g:vimwiki_list = [
          \{'path': '~/Documents/VimWiki/personal.wiki'},
          \{'path': '~/Documents/VimWiki/tech.wiki'},
		  \{'path': '~/Sync/Notes', 'syntax': 'markdown', 'ext': '.md'} ]

au BufRead,BufNewFile *.wiki,*.md set filetype=vimwiki
:autocmd FileType vimwiki map d :VimwikiMakeDiaryNote
function! ToggleCalender()
  execute ":Calender"
  if exists("g:calender_open")
    if g:calender_open == 1
      execute "q"
      unlet g:calender_open
    else
      g:calender_open = 1
    end
  else
    let g:calender_open = 1
  end
endfunction
":autocmd FileType vimwiki map c :call ToggleCalender()

"command aliases
command! Install PluginInstall

"auto generate diary links each time the diary index is open
command! Diary VimwikiDiaryIndex
command! Links VimwikiDiaryGenerateLinks
autocmd BufRead,BufNewFile personal.wiki VimwikiDiaryGenerateLinks
" augroup vimwikigroup
"   autocmd!
"   autocmd BufRead,BufNewFile personal.wiki VimwikiDiaryGenerateLinks
" augroup end

" highlight LineNr term=bold cterm=NONE ctermfg=DarkGrey ctermbg=NONE
" highlight EndOfBuffer term=bold cterm=NONE ctermfg=DarkGrey ctermbg=NONE
" highlight VertSplit term=bold cterm=NONE ctermfg=Green ctermbg=NONE
" highlight Statement term=bold cterm=NONE ctermfg=11 ctermbg=NONE
" highlight NonText term=bold cterm=NONE ctermfg=White ctermbg=NONE
" highlight ModeMsg term=standout cterm=NONE ctermfg=DarkGrey ctermbg=NONE
" highlight Comment term=bold cterm=NONE ctermfg=DarkGrey ctermbg=NONE
"highlight Visual term=bold cterm=NONE ctermfg=0 ctermbg=7
