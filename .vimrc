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
"let g:ycm_confirm_extra_conf = 0
"let g:ycm_autoclose_preview_window_after_insertion = 1
"let g:ycm_goto_buffer_command = 'new-tab'
"nnoremap qq :YcmCompleter GoTo<CR>
"let g:clang_library_path='/usr/lib64/libclang.so'
map <C-n> :NERDTreeToggle<CR>
nnoremap <C-j> :bn<CR>
nnoremap <C-k> :bp<CR>
nnoremap <C-p> :bd<CR>
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
