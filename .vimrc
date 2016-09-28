
filetype off                  " required

set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" Keep Plugin commands between vundle#begin/end.
Plugin 'VundleVim/Vundle.vim'

"Color Scheme
Plugin 'flazz/vim-colorschemes'

"File Management"
Plugin 'ctrlpvim/ctrlp.vim'
Plugin 'scrooloose/nerdtree'

"Python Syntax checker
Plugin 'nvie/vim-flake8'
Plugin 'vim-scripts/Pydiction'

" Universal Syntax Checker + Completion
Plugin 'scrooloose/syntastic'

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
" " CTRLP		= ctrl-p
" " NERDTree		= ctrl-n
" " vim-flake8		= <f7>
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
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0

" """""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" " => General
" """"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""


"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Colors and Fonts
" """""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
set background=dark
colorscheme Monokai
