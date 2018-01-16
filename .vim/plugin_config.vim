"" Airline config {{{
    let g:airline#extensions#tabline#enabled = 1
    let g:airline#extensions#tabline#left_sep = '|'
    let g:airline#extensions#tabline#left_alt_sep = '|'
    let g:airline_powerline_fonts = 1

    if !exists('g:airline_symbols')
        let g:airline_symbols = {}
    endif

    let g:airline#extensions#branch#enabled = 1

    let g:airline_theme='lucius'
"" }}}


""  YouCompleteMe {{{
let g:airline#extensions#ycm#enabled = 1
let g:airline#extensions#ycm#error_symbol = 'E:'
let g:airline#extensions#ycm#warning_symbol = 'W:'
let g:ycm_server_python_interpreter = '/usr/bin/python2'
"" }}}


"" Ultisnips {{{
    " Trigger configuration. Do not use <tab> if you use https://github.com/Valloric/YouCompleteMe.
    let g:UltiSnipsExpandTrigger="<tab>"
    let g:UltiSnipsJumpForwardTrigger="<C-b>"

    " Make YCM compatible with UltiSnips (using supertab)
    let g:ycm_key_list_select_completion = ['<C-n>', '<Down>']
    let g:ycm_key_list_previous_completion = ['<C-p>', '<Up>']
    let g:SuperTabDefaultCompletionType = '<C-n>'
    let g:SuperTabClosePreviewOnPopupClose = 1

    " Better key bindings for UltiSnipsExpandTrigger
    let g:UltiSnipsExpandTrigger = "<tab>"
    let g:UltiSnipsJumpForwardTrigger = "<tab>"
    let g:UltiSnipsJumpBackwardTrigger = "<s-tab>"
    let g:UltiSnipsJumpBackwardTrigger="<C-z>"
"" }}}

"" IndentGuides {{{
    let g:indent_guides_enable_on_vim_startup = 1
    let g:indent_guides_guide_size = 4
    let g:indent_guides_start_level = 1
    let g:indent_guides_auto_colors = 0
    augroup Group1
        autocmd!
        autocmd VimEnter,Colorscheme * :hi IndentGuidesOdd  guibg=red   ctermbg=NONE
        autocmd VimEnter,Colorscheme * :hi IndentGuidesEven guibg=green ctermbg=black
    augroup END
"" }}}

