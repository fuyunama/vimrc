
" Bundle Config Start
filetype off

if has('vim_starting')
  set nocompatible
  " 初回起動時のみruntimepathにneobundleのパスを指定する
  set runtimepath+=$VIM/bundle/neobundle.vim/
endif

" NeoBundleを初期化
let bundlePath = $VIM . '/bundle/'
call neobundle#begin(expand(bundlePath))

" インストールするプラグインをここに記述
NeoBundle 'Shougo/unite.vim'
NeoBundle 'Shougo/vimfiler'
"NeoBundle 'itchyny/lightline.vim'
NeoBundle 'vim-airline/vim-airline'
NeoBundle 'vim-airline/vim-airline-themes'

call neobundle#end()

filetype on
filetype plugin indent on
" Bundle Config End

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
