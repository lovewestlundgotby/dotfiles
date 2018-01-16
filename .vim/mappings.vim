"let mapleader = ","
"imap <Leader>e ä
"imap <Leader>a å
"imap <Leader>o ö
"imap <Leader>E Ä
"imap <Leader>A Å
"imap <Leader>O Ö


"" <Space> to turn off search highlight {{{
nmap <silent> <Space> :nohlsearch<Bar>:echo<CR>
        "Clear highlighting of search when pressing Space
"" }}}


"" <F2> to write and compile TeX {{{
    map <F2> :call WriteCompileTex()<CR>
"" }}}


"" Navigate buffers with tab, shift-tab {{{
    nmap <silent> <Tab> :bnext!<CR>
    nmap <silent> <S-Tab> :bprevious!<CR>
"" }}}


"" Alternative escape key {{{
    imap jk <Esc>
    vmap jk <Esc>
"" }}}


"" Movement {{{
    nnoremap j gj
    nnoremap k gk

    " Navigate splits
    nmap <silent> <C-S-k> :wincmd k<CR>
    nmap <silent> <C-S-h> :wincmd h<CR>
    nmap <silent> <C-S-j> :wincmd j<CR>
    nmap <silent> <C-S-l> :wincmd l<CR>

    nnoremap <BS> {
    onoremap <BS> {
    nnoremap <expr> <CR> empty(&buftype) ? '}' : '<CR>'
    onoremap <expr> <CR> empty(&buftype) ? '}' : '<CR>'
"" }}}


"" Save with 's' {{{
    nnoremap s :w<CR>
"" }}}


"" Insert empty lines without insert mode {{{
    nnoremap t o<ESC>k
    nnoremap T O<ESC>j
"" }}}

