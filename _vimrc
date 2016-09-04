"dein Scripts-----------------------------
if &compatible
  set nocompatible               " Be iMproved
endif

" Required:
set runtimepath+=$VIM/dein/repos/github.com/Shougo/dein.vim

" Required:
call dein#begin($VIM . '/dein')

" Let dein manage dein
" Required:
call dein#add('Shougo/dein.vim')

" Add or remove your plugins here:
"call dein#add('Shougo/neosnippet.vim')
"call dein#add('Shougo/neosnippet-snippets')
call dein#add('vim-airline/vim-airline')
call dein#add('vim-airline/vim-airline-themes')

" You can specify revision/branch/tag.
"call dein#add('Shougo/vimshell', { 'rev': '3787e5' })

" Required:
call dein#end()

" Required:
filetype plugin indent on

" If you want to install not installed plugins on startup.
"if dein#check_install()
"  call dein#install()
"endif

"End dein Scripts-------------------------



"let g:Powerline_symbols = 'unicode'
"let g:airline_powerline_fonts = 1
"set laststatus=2 " Always display the statusline in all windows
"set noshowmode " Hide the default mode text (e.g. -- INSERT -- below the statusline)
"let g:airline_left_sep = ''
let g:airline_left_sep = ''
"let g:airline_left_alt_sep = '>'
let g:airline_right_sep = ''
"let g:airline_right_sep = ''
"let g:airline_right_alt_sep = ''
"if !exists('g:airline_symbols')
"  let g:airline_symbols = {}
"endif
"let g:airline_symbols.branch = ''
"let g:airline_symbols.readonly = ''
"let g:airline_symbols.linenr = ''

" タブラインにもairlineを適用
let g:airline#extensions#tabline#enabled = 1

" （タブが一個の場合）バッファのリストをタブラインに表示する機能をオフ
let g:airline#extensions#tabline#show_buffers = 0

" 0でそのタブで開いてるウィンドウ数、1で左のタブから連番
let g:airline#extensions#tabline#tab_nr_type = 1
