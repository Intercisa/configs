" curl -fLo ~/.vim/autoload/plug.vim --create-dirs https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
" https://github.com/junegunn/vim-plug

syntax on
 
" copy to clipboard from vim
set clipboard=unnamedplus

set encoding=utf-8
" indentation related and coding style
set tabstop=8
set expandtab
set shiftwidth=4
set autoindent
set smartindent
set cindent
filetype plugin indent on
 
 " display related stuff
set relativenumber
set number
syntax enable
set foldenable
set cursorline
 
" search related
set hlsearch
set ignorecase
set smartcase
set incsearch
 
" misc
set hidden              " Hide buffers when they are abandoned
set wildmenu
set showcmd             " Show (partial) command in status line.
set showmatch           " Show matching brackets.
 
set nocompatible              " be iMproved, required
 
set tags=./tags;/      " search for tags in pwd and go up until found
map <A-]> :vsp <CR>:exec("tag ".expand("<cword>"))<CR> 

" bin xmllint -pretty print to F2
map <F2> :%!xmllint --format % <CR>
map <F3> :%!python3 -m json.tool  <CR>
 
 
nnoremap <leader>n :NERDTreeFocus<CR>
nnoremap <C-n> :NERDTree<CR>
nnoremap <C-t> :NERDTreeToggle<CR>
nnoremap <C-f> :NERDTreeFind<CR>
  
"autocmd VimEnter * NERDTree | wincmd p
 
let g:NERDTreeGitStatusIndicatorMapCustom = {
                 \ 'Modified'  :'✹',
                 \ 'Staged'    :'✚',
                 \ 'Untracked' :'✭',
                 \ 'Renamed'   :'➜',
                 \ 'Unmerged'  :'═',
                 \ 'Deleted'   :'✖',
                 \ 'Dirty'     :'✗',
                 \ 'Ignored'   :'☒',
                 \ 'Clean'     :'✔',
                 \ 'Unknown'   :'?',
                 \ }


let g:NERDTreeGitStatusUseNerdFonts = 1 " you should install nerdfonts by yourself. default: 0
let g:NERDTreeGitStatusShowIgnored = 1 " a heavy feature may cost much more time. default: 0
  
 " MUST SET AOTOCRLF OFF IN GITCONFIG OTHERWISE IT WILL CRASH! 
call plug#begin('~/.vim/plugged')
Plug 'sheerun/vim-polyglot'
Plug 'nathanaelkane/vim-indent-guides'
Plug 'rhysd/vim-clang-format'
Plug 'dracula/vim', { 'as': 'dracula' }
Plug 'preservim/nerdtree' |
               \ Plug 'Xuyuanp/nerdtree-git-plugin' |
               \ Plug 'ryanoasis/vim-devicons'
" Plug 'oblitum/youcompleteme'
call plug#end()    

" Othervise it won't work!
colorscheme dracula 