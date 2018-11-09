"Vundle setub below
set nocompatible
filetype off
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

Plugin 'VundleVim/Vundle.vim'

"" Themes and looks {
    Plugin 'nielsmadan/harlequin'
    Plugin 'vim-airline/vim-airline'
    Plugin 'vim-airline/vim-airline-themes'
    Plugin 'nathanaelkane/vim-indent-guides'
    Plugin 'luochen1990/rainbow'
    Plugin 'ryanoasis/vim-devicons'
    Plugin 'chrisduerr/vim-undead'
"" }

"" File exploration {
    Plugin 'scrooloose/nerdtree'
    Plugin 'Xuyuanp/nerdtree-git-plugin'
"" }

"" Snippets {
    "Track the engine
    Plugin 'SirVer/ultisnips'
    " Snippets are separated from the engine. Add this if you want them:
    Plugin 'honza/vim-snippets'
"" }

"" Auto completion {
    Plugin 'Valloric/YouCompleteMe'     " Auto complete engine
    Plugin 'Raimondi/delimitMate'       " Auto complete paranthesis and similar
"" }

"" Syntax highlighting {
    Plugin 'leafgarland/typescript-vim'     " TypeScript
    Plugin 'HerringtonDarkholme/yats.vim'
"" }

"" Git {
    Plugin 'tpope/vim-fugitive'
"" }

"" Syntax {
    Plugin 'vim-syntastic/syntastic'
    Plugin 'Quramy/tsuquyomi'           " TypeScript syntax checker
"" }

call vundle#end()

