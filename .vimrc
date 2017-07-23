"Vundle setub below
set nocompatible
filetype off
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

Plugin 'gmarik/Vundle.vim'

Plugin 'Valloric/YouCompleteMe'

Plugin 'nielsmadan/harlequin'

Plugin 'vim-airline/vim-airline'
Plugin 'vim-airline/vim-airline-themes'

"Track the engine
Plugin 'SirVer/ultisnips'
" Snippets are separated from the engine. Add this if you want them:
Plugin 'honza/vim-snippets'

Plugin 'ervandew/supertab'

Plugin 'nathanaelkane/vim-indent-guides'

Plugin 'tpope/vim-fugitive'

call vundle#end()

colorscheme harlequin

set background=dark

filetype plugin indent on
set rnu
set number
"set guifont=Anonymous\ Pro\ 16

"airline config
set laststatus=2
let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#tabline#left_sep = ''
let g:airline#extensions#tabline#left_alt_sep = '|'
let g:airline#extensions#tabline#buffer_nr_show = 1

let g:airline_theme='murmur'

let g:airline#extensions#branch#enabled = 1

"ultisnips config
" Trigger configuration. Do not use <tab> if you use https://github.com/Valloric/YouCompleteMe.
let g:UltiSnipsExpandTrigger="<tab>"
let g:UltiSnipsJumpForwardTrigger="<c-b>"

" make YCM compatible with UltiSnips (using supertab)
let g:ycm_key_list_select_completion = ['<C-n>', '<Down>']
let g:ycm_key_list_previous_completion = ['<C-p>', '<Up>']
let g:SuperTabDefaultCompletionType = '<C-n>'

" better key bindings for UltiSnipsExpandTrigger
let g:UltiSnipsExpandTrigger = "<tab>"
let g:UltiSnipsJumpForwardTrigger = "<tab>"
let g:UltiSnipsJumpBackwardTrigger = "<s-tab>"
let g:UltiSnipsJumpBackwardTrigger="<c-z>"

"IndentGuides config
let g:indent_guides_enable_on_vim_startup = 1
let g:indent_guides_guide_size = 1
"let g:indent_guides_start_level = 2
let g:indent_guides_auto_colors = 0
autocmd VimEnter,Colorscheme * :hi IndentGuidesOdd  guibg=red   ctermbg=236
autocmd VimEnter,Colorscheme * :hi IndentGuidesEven guibg=green ctermbg=236

"Higlight current line
set cursorline
hi CursorLine cterm=NONE ctermbg=236

"Set path for YCM clang autocompletion
"let g:ycm_global_ycm_extra_conf = 0

"Source glfw syntax highlight
"au BufRead *.cpp :so ~/.vim/bundle/glfw-vim/after/syntax/cpp/glfw.vim

"Source glm syntax highlight
"au BufRead *.cpp :so ~/.vim/bundle/glm-vim/syntax/glm.vim

"remove menus in gvim
set guioptions-=m
set guioptions-=T
set guioptions-=r
set guioptions-=L

let mapleader = ","
imap <Leader>e ä
imap <Leader>a å
imap <Leader>o ö
imap <Leader>E Ä
imap <Leader>A Å
imap <Leader>O Ö

"Keep x number of lines closest to top/bottom when scrolling up/down
set scrolloff=8

"Set search highlighting on
set hlsearch

"Search when typing
set incsearch

"Clear highlighting of search when pressing Space
nmap <silent> <Space> :nohlsearch<Bar>:echo<CR>

"Set default search ('/', '?') to not be case sensitive
"To force non case sensitive search, use \c anywhere in search string
"To force the inverse, i.e. case sensitive search, use \C anywhere in search
"string
set ignorecase
"Force case sensitive search whenever capital letters are used
set smartcase

"Save folds when closing file and reload folds when reopening file
au BufWinLeave * mkview
au BufWinEnter * silent loadview

"Navigate buffers with tab, shift-tab
nmap <Tab> :bnext!<CR>
nmap <S-Tab> :bprevious!<CR>

"Navigate splits with ctrl-hjkl
nmap <silent> <C-S-k> :wincmd k<CR>
nmap <silent> <C-S-h> :wincmd h<CR>
nmap <silent> <C-S-j> :wincmd j<CR>
nmap <silent> <C-S-l> :wincmd l<CR>

"Default tabbing behaviour
set expandtab
set shiftwidth=4
set tabstop=4
set softtabstop=4

"Alternative escape key
imap jk <Esc>
vmap jk <Esc>
