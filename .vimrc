" Vundle stuff
set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'
Plugin 'nanotech/jellybeans.vim'
Plugin 'scrooloose/nerdtree'
Plugin 'vim-airline/vim-airline'
Plugin 'vim-airline/vim-airline-themes'
Plugin 'tpope/vim-fugitive'
Plugin 'bling/vim-bufferline'
Plugin 'lervag/vimtex'
" This enables gdscript synthax highlight in vim
" To use terminal vim in godot : /usr/bin/gnome-terminal -e 'vim --servername godot --remote +{line} {file}'
Plugin 'calviken/vim-gdscript3'

" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required
" To ignore plugin indent changes, instead use:
"filetype plugin on
"
" Brief help
" :PluginList       - lists configured plugins
" :PluginInstall    - installs plugins; append `!` to update or just :PluginUpdate
" :PluginSearch foo - searches for foo; append `!` to refresh local cache
" :PluginClean      - confirms removal of unused plugins; append `!` to auto-approve removal
"
" see :h vundle for more details or wiki for FAQ
" Put your non-Plugin stuff after this line

colorscheme jellybeans
let g:jellybeans_overrides = {
\    'background': { 'ctermbg': 'none', '256ctermbg': 'none' },
\    'Visual' :    { 'guibg': '444444', 'attr': 'bold'},
\    'CursorLine' :{ 'guibg': '724d71'}
\}
let g:airline_theme = 'jellybeans'
let g:airline_left_sep=''
nmap <C-n> :NERDTreeToggle<CR>
nnoremap <C-j> :bn<CR>
nnoremap <C-k> :bp<CR>
nnoremap <C-p> :bd<CR>
let g:vimtex_view_method='zathura'
syntax on " Syntax highlight
set history=100 " remember the last 100 commands
"set smartindent " Keep previous indentation in newlines
set tabstop=8 softtabstop=0 expandtab shiftwidth=2 smarttab " Make tab print 2 spaces
set number " Print line numbers
set cursorline " Hightlight current line
set cc=81 " Show column 81
set encoding=utf-8  " The encoding displayed.
set fileencoding=utf-8  " The encoding written to file.
set nobackup " Does not make backups
