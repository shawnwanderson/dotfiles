"                                                                                                      
"                                                                                                      
"                                                                                                      
"   _____  _                                ___              _                                         
"  /  ___|| |                              / _ \            | |                                        
"  \ `--. | |__    __ _ __      __ _ __   / /_\ \ _ __    __| |  ___  _ __  ___   ___   _ __           
"   `--. \| '_ \  / _` |\ \ /\ / /| '_ \  |  _  || '_ \  / _` | / _ \| '__|/ __| / _ \ | '_ \          
"  /\__/ /| | | || (_| | \ V  V / | | | | | | | || | | || (_| ||  __/| |   \__ \| (_) || | | |         
"  \____/ |_| |_| \__,_|  \_/\_/  |_| |_| \_| |_/|_| |_| \__,_| \___||_|   |___/ \___/ |_| |_|         
"                                                                                                      
"                                                                                                      
"   _   _  _              _____                 __  _                             _    _               
"  | | | |(_)            /  __ \               / _|(_)                           | |  (_)              
"  | | | | _  _ __ ___   | /  \/  ___   _ __  | |_  _   __ _  _   _  _ __   __ _ | |_  _   ___   _ __  
"  | | | || || '_ ` _ \  | |     / _ \ | '_ \ |  _|| | / _` || | | || '__| / _` || __|| | / _ \ | '_ \ 
"  \ \_/ /| || | | | | | | \__/\| (_) || | | || |  | || (_| || |_| || |   | (_| || |_ | || (_) || | | |
"   \___/ |_||_| |_| |_|  \____/ \___/ |_| |_||_|  |_| \__, | \__,_||_|    \__,_| \__||_| \___/ |_| |_|
"                                                       __/ |                                          
"                                                      |___/                                           
"                                                                                                      
"                                                                                                      
"                                                                                                      
"Plugin Configuration{{{
"Vundle{{{
" required by vundle
filetype off  

set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" Keep Plugin commands between vundle#begin/end.
Plugin 'VundleVim/Vundle.vim'
"}}}
"vim-colors-solarized{{{
"Color Scheme
"Plugin 'flazz/vim-colorschemes'
Plugin 'altercation/vim-colors-solarized'
"}}}
"nerdcommenter{{{
"Comment manager
Plugin 'scrooloose/nerdcommenter'
" Allow commenting and inverting empty lines (useful when commenting a region)
let g:NERDCommentEmptyLines = 1
" " Enable trimming of trailing whitespace when uncommenting
let g:NERDTrimTrailingWhitespace = 1
" Add spaces after comment delimiters by default
let g:NERDSpaceDelims = 1
" " Align line-wise comment delimiters flush left instead of following code indentation
let g:NERDDefaultAlign = 'left'

"}}}
"File Navigation{{{
"ctrlp{{{
Plugin 'ctrlpvim/ctrlp.vim'
":help ctrlp-options for more options
let g:ctrlp_map = '<c-p>'
let g:ctrlp_cmd = 'CtrlP'
let g:ctrlp_working_path_mode = 'ra'
"}}}
"nerdtree{{{
Plugin 'scrooloose/nerdtree'
":help NERDTreeOptions
map <C-n> :NERDTreeToggle<CR>
let NERDTreeIgnore=['\.pyc$', '\~$']
"}}}
"}}}
"Syntax and Symantics Checkers{{{
"vim-flake8{{{
"Python Syntax checker
Plugin 'nvie/vim-flake8'
"}}}
"syntastic{{{
"Plugin 'scrooloose/syntastic'
" Universal Syntax Checker + Completion
"syntastic recommended settings
"set statusline+=%#warningmsg#
"set statusline+=%{SyntasticStatuslineFlag()}
"set statusline+=%*

"let g:syntastic_always_populate_loc_list = 1
"let g:syntastic_auto_loc_list = 1
"let g:syntastic_check_on_open = 1
"let g:syntastic_check_on_wq = 0

"}}}
"}}}
"AutoComplete and Snippets{{{
"autocomplete
Plugin 'ervandew/supertab'
Plugin 'davidhalter/jedi-vim'
Plugin 'fs111/pydoc.vim'
"snippets
Plugin 'SirVer/ultisnips'
"}}}
"Utilities{{{
"L9{{{
Plugin 'L9'
"}}}
"slimux{{{
Plugin 'epeli/slimux'
"Send text between tmux panes!
nmap <Leader>s  :SlimuxREPLSendLine<CR>j
vmap <Leader>s :SlimuxREPLSendSelection<CR>
map  <C-c><C-c> :SlimuxREPLConfigure<CR>
"}}}
"auto-pairs{{{
"automatically close [, {, (, ", ect.
Plugin 'jiangmiao/auto-pairs'
"}}}
"}}}
"Versioning Systems{{{
"vim-fugitive{{{
Plugin 'tpope/vim-fugitive'
"}}}
"}}}
"Vundle End{{{
" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required
filetype plugin on
" see :h vundle for more details or wiki for FAQ
" Put your non-Plugin stuff after this line
"}}}

"}}}
"Vim Configuration{{{
"General{{{
" """"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" zsh shell and powerline{{{
set shell=/bin/zsh
python3 from powerline.vim import setup as powerline_setup
python3 powerline_setup()
python3 del powerline_setup
" Always show statusline
set laststatus=2
"}}}
"Command Completion{{{
" Tab completion in command mode
set wildmenu
"These filetypes are ignored when expanding wildcard searches
set wildignore+=*/tmp/*,*.so,*.swp,*.zip,*.pyc
"}}}
"Line Numbers{{{
" show line numbers
set number
" using only 1 column (and 1 space) while possible
set numberwidth=1 
"}}}
"Leader{{{
" With a map leader it's possible to do extra key combinations
" " leader is press comma (,) key
" " like <leader>w saves the current file
let mapleader=","
let g:mapleader=","
" Fast saving with leader + w
nmap <leader>w :w!<cr>
" Fast quitting with leader + q
nmap <leader>q :q<cr>
"}}}
"Edit/Load .vimrc{{{
" When vimrc is edited, reload it
autocmd! bufwritepost vimrc source ~/.vimrc
" Bring up vimrc for edditing
nnoremap <leader>ev :split $MYVIMRC<CR>  
" Force reload vimrc
nnoremap <leader>rv :source $MYVIMRC<CR>     
"}}}
"Mouse{{{
set mouse=a
"}}}
"}}}
"Visuals{{{
" Colors and Fonts{{{
" """""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
syntax enable
set background=dark
colorscheme solarized
"}}}
"Cursor{{{
set cursorline
"}}}
"}}}
"Copy and Paste{{{
" """""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
vnoremap <C-c> "*y
vnoremap <C-c> "+y
nnoremap <C-v> "+p
inoremap <C-v> <C-r>+
set pastetoggle=<F2>
"}}}
"Folding Options{{{
" """"""""""""""""""""""""""""""""""""""""""""""""""""""""""
"}}}
" Navigation {{{
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
"}}}
" Search Options{{{
" """""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
set incsearch       " show 'best match so far' as you type
set hlsearch        " hilight the items found by the search
set ignorecase      " ignores case of letters on searches
set smartcase       " Override the 'ignorecase' option if the search pattern contains upper case characters
"Manually turn off the search highlight
map <leader>/ :nohl<CR>
"}}}
" Text, Tab and Indent Related{{{
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
"}}}
"Vim Options {{{
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"modelines variable tells vim to look for file specific configuration in the first and last n lines
"for any file opened. I use it to set fold configuration for .vimrc
set modelines=1
"}}}
"}}}
"Shortcuts{{{
" " Key Shorcuts by Default
" " CTRLP		    = ctrl-p
" " NERDTree		= ctrl-n
" " vim-flake8		= <f7>
" " leader	    	= ,
"}}}
"
"                          .-""    ""--.
"                        ,'             `.
"                       /     ,'          \
"                    `\/     .             |
"                  .===:_,  |              /
"                 / .'""".  ,:=:.         / _.,
"                "   `--. `|/  _\` (    _/-" /
"                     |\_b_9-""  ___) -"-"//'
"                     | --/`--_o"_/'  (6_//
"   P I C C O L O     / ,'    -""    .),-'
"                     (  "-__       `-(
"                      \ |HHH/    /    \
"                       \  -   _./      `-._..._
"                        7----",'/     ..-" .-- "--.._
"                 _.._.-/)  .-',/   .-"  -"           ""--..
"          _..--"|=""--..--""""""./'  .              .-"""-.\
"        ,' .-','     ,'       /.   /              .'       \\
"     .:' ,' ,:      /      ,/'/  /'         _....' _..--""" )
"   ,"/  /  /(      /   _,/' / ,/'         /.    .-"       __|
"  / / /'  (  ""----""""   / ,/           / `:.-"    _.--""  /
"  ||  (    \_       __.-'  /             |`-.`:=._-"    _.-:|
"  \/   \     """""""      /               ""-`  `-"===="-'   \
"  |     "-.        __..-"                    \._.====..       `
"  |        ""--""""                          //..---""\\       .
"  \                                        /'| __...---.\      |
"
"Custom Folding For This File
" If you have set modelines=1 but this does not work :verbose set modelines? to see if it is being set somewhere else
" The following line must be at the end of the file. It is read because modelines is set
" It makes .vimrc folded with markers instead of indentation and sets maximum fold level to default
" vim: set foldmethod=marker:set foldlevel=0
