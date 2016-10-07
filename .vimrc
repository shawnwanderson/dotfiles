
filetype off                  " required

set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" Keep Plugin commands between vundle#begin/end.
Plugin 'VundleVim/Vundle.vim'

"Color Scheme
Plugin 'flazz/vim-colorschemes'

"Comment manager
Plugin 'scrooloose/nerdcommenter'
"File Management"
Plugin 'ctrlpvim/ctrlp.vim'
Plugin 'scrooloose/nerdtree'

"Python Syntax checker
Plugin 'nvie/vim-flake8'
Plugin 'vim-scripts/Pydiction'

" Universal Syntax Checker + Completion
"Plugin 'scrooloose/syntastic'

"Utilities"
Plugin 'L9'
Plugin 'epeli/slimux'

"Versioning System"
Plugin 'tpope/vim-fugitive'

" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required
"
" Brief help
" :PluginList       - lists configured plugins
" :PluginInstall    - installs plugins; append `!` to update or just :PluginUpdate
" :PluginSearch foo - searches for foo; append `!` to refresh local cache
" :PluginClean      - confirms removal of unused plugins; append `!` to auto-approve removal
"
" see :h vundle for more details or wiki for FAQ
" Put your non-Plugin stuff after this line

"
" " Key Shorcuts by Default
" " CTRLP		    = ctrl-p
" " NERDTree		= ctrl-n
" " vim-flake8		= <f7>
" " leader	    	= ,
" " 
"
" """""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" " => Plugin Config
" """"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"ctrlp see github for details
":help ctrlp-options for more options
let g:ctrlp_map = '<c-p>'
let g:ctrlp_cmd = 'CtrlP'
let g:ctrlp_working_path_mode = 'ra'
set wildignore+=*/tmp/*,*.so,*.swp,*.zip,*.pyc

"nerdtree see github for details
":help NERDTreeOptions
map <C-n> :NERDTreeToggle<CR>
let NERDTreeIgnore=['\.pyc$', '\~$']

"syntastic recommended settings
"set statusline+=%#warningmsg#
"set statusline+=%{SyntasticStatuslineFlag()}
"set statusline+=%*

"let g:syntastic_always_populate_loc_list = 1
"let g:syntastic_auto_loc_list = 1
"let g:syntastic_check_on_open = 1
"let g:syntastic_check_on_wq = 0

"Slimux
map <Leader>s  :SlimuxREPLSendLine<CR>
vmap <Leader>s :SlimuxREPLSendSelection<CR>


" Allow commenting and inverting empty lines (useful when commenting a region)
let g:NERDCommentEmptyLines = 1
"
" " Enable trimming of trailing whitespace when uncommenting
let g:NERDTrimTrailingWhitespace = 1
" Add spaces after comment delimiters by default
let g:NERDSpaceDelims = 1
"
" " Align line-wise comment delimiters flush left instead of following code indentation
let g:NERDDefaultAlign = 'left'
" """""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" " => General
" """"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" show line numbers
set number
set numberwidth=1             " using only 1 column (and 1 space) while possible

" With a map leader it's possible to do extra key combinations
" " leader is press comma (,) key
" " like <leader>w saves the current file
let mapleader=","
let g:mapleader=","

" Fast saving with leader + w
nmap <leader>w :w!<cr>
" Fast quitting with leader + q
nmap <leader>q :q<cr>

" When vimrc is edited, reload it
autocmd! bufwritepost vimrc source ~/.vimrc

" Bring up vimrc for edditing
nnoremap <leader>ev :split $MYVIMRC<CR>  
" Force reload vimrc
nnoremap <leader>rv :source $MYVIMRC<CR>     

" Tab completion in command mode
set wildmenu

set cursorline
 

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" =>Copy and Paste
" """""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
vnoremap <C-c> "*y
vnoremap <C-c> "+y

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Colors and Fonts
" """""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
set background=dark
colorscheme Monokai


"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Navigation 
" """""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

noremap <Space> i<Space><RIGHT><ESC>
noremap <BS> i<BS><RIGHT><ESC>
map <leader>j $
map <leader>f 0

" Split navigation
nnoremap <C-J> <C-W><C-J>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-L> <C-W><C-L>
nnoremap <C-H> <C-W><C-H>

"split more naturally
set splitbelow
set splitright


"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Text, tab and indent related
" """""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
set tabstop=4
set softtabstop=4
set shiftwidth=4
set textwidth=80
set smarttab
set expandtab

set lbr
set tw=500

set ai "Auto indent
set si "Smart indetnokai

set nowrap          " no line wrapping;

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Search options
" """""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"--- search options ------------
set incsearch       " show 'best match so far' as you type
set hlsearch        " hilight the items found by the search
set ignorecase      " ignores case of letters on searches
set smartcase       " Override the 'ignorecase' option if the search pattern contains upper case characters
