"Vundle setub below
set nocompatible
filetype off
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

Plugin 'gmarik/Vundle.vim'

"" Themes and looks {{{
    Plugin 'nielsmadan/harlequin'
    Plugin 'vim-airline/vim-airline'
    Plugin 'vim-airline/vim-airline-themes'
    Plugin 'nathanaelkane/vim-indent-guides'
"" }}}

"" Snippets {{{
    "Track the engine
    Plugin 'SirVer/ultisnips'
    " Snippets are separated from the engine. Add this if you want them:
    Plugin 'honza/vim-snippets'
"" }}}

"" Auto completion {{{
    Plugin 'Valloric/YouCompleteMe'     " Auto complete engine
    Plugin 'ervandew/supertab'
"" }}}

"" Git {{{
Plugin 'tpope/vim-fugitive'
"" }}}

call vundle#end()

