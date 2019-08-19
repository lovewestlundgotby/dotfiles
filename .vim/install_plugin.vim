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
    Plugin 'iCyMind/NeoSolarized'
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
    Plugin 'sheerun/vim-polyglot'       " A lot of languages
"" }

"" Git {
    Plugin 'tpope/vim-fugitive'
    Plugin 'airblade/vim-gitgutter'
"" }

"" Syntax {
    Plugin 'w0rp/ale'
    Plugin 'Quramy/tsuquyomi'           " TypeScript syntax checker
"" }

"" Markdown {
    " Install by ':call mkdp#util#install()'
    Plugin 'iamcco/markdown-preview.nvim'
"" }

"" Miscellanious {
  Plugin 'machakann/vim-sandwich'       " Handle surroundings like parentheses, quotes, etc
  Plugin 'tpope/vim-commentary'         " Fast comments
  Plugin 'sakhnik/nvim-gdb'             " Debug C/C++ with gdb in vim
"" }
call vundle#end()

