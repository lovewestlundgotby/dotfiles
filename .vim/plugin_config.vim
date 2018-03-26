"" Airline config {
    " Enable the list of buffers
    let g:airline#extensions#tabline#enabled = 1
    " Show just the filename in the buffer line
    let g:airline#extensions#tabline#fnamemod = ':t'
    let g:airline_powerline_fonts = 1
    let g:airline#extensions#tabline#left_sep = ''
    let g:airline#extensions#tabline#left_alt_sep = ''
    let g:airline#parts#ffenc#skip_expected_string='utf-8[unix]'
    let g:airline#extensions#tabline#buffer_idx_mode = 1

    let g:airline#extensions#branch#enabled = 1

    let g:airline_theme='solarized'
    let g:airline#extensions#ycm#enabled = 1
    let g:airline#extensions#ycm#error_symbol = 'E:'
    let g:airline#extensions#ycm#warning_symbol = 'W:'
"" }

"" Rainbow Paranthesis {
    let g:rainbow_active = 1
    let g:rainbow_conf = {
	\	'guifgs': ['royalblue3', 'darkorange3', 'seagreen3', 'firebrick'],
	\	'ctermfgs': ['32', '208', '34', '196'],
	\	'operators': '_,_',
	\	'parentheses': ['start=/(/ end=/)/ fold', 'start=/\[/ end=/\]/ fold', 'start=/{/ end=/}/ fold'],
	\	'separately': {
	\		'*': {},
	\		'tex': {
	\			'parentheses': ['start=/(/ end=/)/', 'start=/\[/ end=/\]/'],
	\		},
	\		'vim': {
	\			'parentheses': ['start=/(/ end=/)/', 'start=/\[/ end=/\]/', 'start=/{/ end=/}/ fold', 'start=/(/ end=/)/ containedin=vimFuncBody', 'start=/\[/ end=/\]/ containedin=vimFuncBody', 'start=/{/ end=/}/ fold containedin=vimFuncBody'],
	\		},
	\	}
	\}
"" }

""  YouCompleteMe {
    " Typescript completion
    if !exists("g:ycm_semantic_triggers")
        let g:ycm_semantic_triggers = {}
    endif
    let g:ycm_semantic_triggers['typescript'] = ['.']
"" }


"" Ultisnips and some YouCompleteMe {
    " Make YCM compatible with UltiSnips (using supertab)
    let g:ycm_key_list_select_completion    = ['<C-n>', '<Down>']
    let g:ycm_key_list_previous_completion  = ['<C-p>', '<Up>']
    let g:SuperTabDefaultCompletionType     = '<C-n>'
    let g:SuperTabClosePreviewOnPopupClose  = 1

    " Better key bindings for UltiSnipsExpandTrigger
    let g:UltiSnipsExpandTrigger        = "<tab>"
    let g:UltiSnipsJumpForwardTrigger   = "<tab>"
    let g:UltiSnipsJumpBackwardTrigger  = "<s-tab>"
    let g:UltisnipsJumpBackwardTrigger  = "<C-z>"
"" }

"" IndentGuides {
    let g:indent_guides_enable_on_vim_startup = 1
    let g:indent_guides_guide_size = 4
    let g:indent_guides_start_level = 1
    let g:indent_guides_auto_colors = 0
    augroup Group1
        autocmd!
        autocmd VimEnter,Colorscheme * :hi IndentGuidesOdd  guibg=NONE ctermbg=NONE
        autocmd VimEnter,Colorscheme * :hi IndentGuidesEven guibg=DarkSlateGray ctermbg=235
    augroup END
"" }

