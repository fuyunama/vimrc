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
NeoBundle 'itchyny/lightline.vim'

call neobundle#end()

filetype on
filetype plugin indent on
" Bundle Config End
