
" """""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" " => General
" """"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" zsh shell and powerline
set shell=/bin/zsh
python3 from powerline.vim import setup as powerline_setup
python3 powerline_setup()
python3 del powerline_setup
" Always show statusline
set laststatus=2
"

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
set mouse=a
map <leader>/ :nohl<CR>

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" =>Copy and Paste
" """""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
vnoremap <C-c> "*y
vnoremap <C-c> "+y
nnoremap <C-v> "+p
inoremap <C-v> <C-r>+
set pastetoggle=<F2>

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Colors and Fonts
" """""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
syntax enable
set background=dark
colorscheme solarized

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Navigation 
" """""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

noremap <Space> i<Space><RIGHT><ESC>
noremap <BS> i<BS><RIGHT><ESC>
map <leader>j $
map <leader>f 0
imap <C-L> <Right>

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
set nosmartindent

"experimenting with line wrap
set nowrap
"set linebreak
"set nolist  " list disables linebreak
"set breakindent



"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Search options
" """""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"--- search options ------------
set incsearch       " show 'best match so far' as you type
set hlsearch        " hilight the items found by the search
set ignorecase      " ignores case of letters on searches
set smartcase       " Override the 'ignorecase' option if the search pattern contains upper case characters
