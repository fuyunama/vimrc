set encoding=utf-8
scriptencoding utf-8
set fileencoding=utf-8
" vim:set ts=8 sts=2 sw=2 tw=0: (この行に関しては:help modelineを参照)
"
" An example for a Japanese version gvimrc file.
" 日本語版のデフォルトGUI設定ファイル(gvimrc) - Vim7用試作
"
" Last Change: 11-Mar-2020.
" Maintainer:  MURAOKA Taro <koron@tka.att.ne.jp>
"
" 解説:
" このファイルにはVimの起動時に必ず設定される、GUI関連の設定が書かれていま
" す。編集時の挙動に関する設定はvimrcに書かかれています。
"
" 個人用設定は_gvimrcというファイルを作成しそこで行ないます。_gvimrcはこの
" ファイルの後に読込まれるため、ここに書かれた内容を上書きして設定することが
" 出来ます。_gvimrcは$HOMEまたは$VIMに置いておく必要があります。$HOMEは$VIM
" よりも優先され、$HOMEでみつかった場合$VIMは読込まれません。
"
" 管理者向けに本設定ファイルを直接書き換えずに済ませることを目的として、サイ
" トローカルな設定を別ファイルで行なえるように配慮してあります。Vim起動時に
" サイトローカルな設定ファイル($VIM/gvimrc_local.vim)が存在するならば、本設
" 定ファイルの主要部分が読み込まれる前に自動的に読み込みます。
"
" 読み込み後、変数g:gvimrc_local_finishが非0の値に設定されていた場合には本設
" 定ファイルに書かれた内容は一切実行されません。デフォルト動作を全て差し替え
" たい場合に利用して下さい。
"
" 参考:
"   :help gvimrc
"   :echo $HOME
"   :echo $VIM
"   :version

"---------------------------------------------------------------------------
" サイトローカルな設定($VIM/gvimrc_local.vim)があれば読み込む。読み込んだ後
" に変数g:gvimrc_local_finishに非0な値が設定されていた場合には、それ以上の設
" 定ファイルの読込を中止する。
if 1 && filereadable($VIM . '/gvimrc_local.vim')
  source $VIM/gvimrc_local.vim
  if exists('g:gvimrc_local_finish') && g:gvimrc_local_finish != 0
    finish
  endif
endif

"---------------------------------------------------------------------------
" ユーザ優先設定($HOME/.gvimrc_first.vim)があれば読み込む。読み込んだ後に変
" 数g:gvimrc_first_finishに非0な値が設定されていた場合には、それ以上の設定
" ファイルの読込を中止する。
if 0 && exists('$HOME') && filereadable($HOME . '/.gvimrc_first.vim')
  unlet! g:gvimrc_first_finish
  source $HOME/.gvimrc_first.vim
  if exists('g:gvimrc_first_finish') && g:gvimrc_first_finish != 0
    finish
  endif
endif

"---------------------------------------------------------------------------
" Bram氏の提供する設定例をインクルード (別ファイル:vimrc_example.vim)。これ
" 以前にg:no_gvimrc_exampleに非0な値を設定しておけばインクルードしない。
if 1 && (!exists('g:no_gvimrc_example') || g:no_gvimrc_example == 0)
  source $VIMRUNTIME/gvimrc_example.vim
endif

"---------------------------------------------------------------------------
" カラー設定:
"colorscheme morning
"colorscheme pablo
"colorscheme desert256
"colorscheme eclipse
"colorscheme fine_blue
"colorscheme ir_black
"colorscheme gemcolors
"colorscheme github
"colorscheme scame
"colorscheme zenesque
"colorscheme vydark
"colorscheme blueshift
"colorscheme clean
"colorscheme gravity
"colorscheme zazen
"colorscheme eddie
"colorscheme github
"colorscheme PaperColor
"colorscheme neon2
"colorscheme gentooishII
"colorscheme molokai
"colorscheme pencil
colorscheme gentooish0.5
"colorscheme yozakura 

set background=dark
"set background=light

set termguicolors     " enable true colors support
"let ayucolor="light"  " for light version of theme
"colorscheme ayu

"---------------------------------------------------------------------------
" フォント設定:
"
if has('win32')
  " Windows用
  "set guifont=McS_Konatu:h8:cSHIFTJIS
  "set guifont=MyricaM_M:h12:cSHIFTJIS
  "set guifont=Fantasque_Sans_Mono:h12
  set guifont=Monoid:h9
  set guifontwide=Myrica_M:h12:cSHIFTJIS
  "set guifontwide=HGｺﾞｼｯｸM:h12:cSHIFTJIS
  "set guifontwide=VL_ゴシック:h12:cSHIFTJIS

  "set guifontwide=Migu_1M:h12:cSHIFTJIS
  "set guifontwide=Utatane:h12:cSHIFTJIS
  "set guifontwide=HackGen:h12:cSHIFTJIS
  "set guifontwide=ＭＳ_ゴシック:h12:cSHIFTJIS

  " 行間隔の設定
  set linespace=0
  " 一部のUCS文字の幅を自動計測して決める
  if has('kaoriya')
    set ambiwidth=auto
  endif
elseif has('mac')
  set guifont=Osaka??????幅:h14
elseif has('xfontset')
  " UNIX用 (xfontsetを使用)
  set guifontset=a14,r14,k14
endif

"---------------------------------------------------------------------------
" ウインドウに関する設定:
"
" ウインドウの幅
"set columns=80
" ウインドウの高さ
"set lines=54
" コマンドラインの高さ(GUI使用時)
set cmdheight=1
"---------------------------------------------------------------------------
" 日本語入力に関する設定:
"
if has('multi_byte_ime') || has('xim')
  " IME ON時のカーソルの色を設定(設定例:紫)
  highlight CursorIM guibg=Purple guifg=NONE
  " 挿入モード・検索モードでのデフォルトのIME状態設定
  set iminsert=0 imsearch=0
  if has('xim') && has('GUI_GTK')
    " XIMの入力開始キーを設定:
    " 下記の s-space はShift+Spaceの意味でkinput2+canna用設定
    "set imactivatekey=s-space
  endif
  " 挿入モードでのIME状態を記憶させない場合、次行のコメントを解除
  inoremap <silent> <ESC> <ESC>:set iminsert=0<CR>
endif

"---------------------------------------------------------------------------
" マウスに関する設定:
"
" 解説:
" mousefocusは幾つか問題(一例:ウィンドウを分割しているラインにカーソルがあっ
" ている時の挙動)があるのでデフォルトでは設定しない。Windowsではmousehide
" が、マウスカーソルをVimのタイトルバーに置き日本語を入力するとチラチラする
" という問題を引き起す。
"
" どのモードでもマウスを使えるようにする
set mouse=a
" マウスの移動でフォーカスを自動的に切替えない (mousefocus:切替る)
set nomousefocus
" 入力時にマウスポインタを隠す (nomousehide:隠さない)
set mousehide
" ビジュアル選択(D&D他)を自動的にクリップボードへ (:help guioptions_a)
"set guioptions+=a
"set guioptions+=""
"set guioptions+=M
set guioptions-=T
set guioptions-=L
set guioptions+=r
set guioptions+=g
"set guioptions+=e
set guioptions+=m
"---------------------------------------------------------------------------
" メニューに関する設定:
"
" 解説:
" "M"オプションが指定されたときはメニュー("m")・ツールバー("T")供に登録され
" ないので、自動的にそれらの領域を削除するようにした。よって、デフォルトのそ
" れらを無視してユーザが独自の一式を登録した場合には、それらが表示されないと
" いう問題が生じ得る。しかしあまりにレアなケースであると考えられるので無視す
" る。
"
if &guioptions =~# 'M'
  let &guioptions = substitute(&guioptions, '[mT]', '', 'g')
endif

"---------------------------------------------------------------------------
" その他、見栄えに関する設定:
"
" 検索文字列をハイライトしない(_vimrcではなく_gvimrcで設定する必要がある)
"set nohlsearch

"---------------------------------------------------------------------------
" 印刷に関する設定:
"
" 注釈:
" 印刷はGUIでなくてもできるのでvimrcで設定したほうが良いかもしれない。この辺
" りはWindowsではかなり曖昧。一般的に印刷には明朝、と言われることがあるらし
" いのでデフォルトフォントは明朝にしておく。ゴシックを使いたい場合はコメント
" アウトしてあるprintfontを参考に。
"
" 参考:
"   :hardcopy
"   :help 'printfont'
"   :help printing
"
" 印刷用フォント
if has('printer')
  if has('win32')
    set printfont=MS_Gothic:h12:cSHIFTJIS
  endif
endif

" Copyright (C) 2009-2013 KaoriYa/MURAOKA Taro
"以上、香り屋の設定
"My settings are below.

filetype plugin on
set expandtab
set shiftwidth=4
set tabstop=4
set softtabstop=4

let &directory = g:my_vim_dir . '/tmp'
let &backupdir = g:my_vim_dir . '/tmp/backup'
if !isdirectory(&backupdir)
  call mkdir(iconv(&backupdir, &encoding, &termencoding), 'p')
endif
let &undodir = g:my_vim_dir . '/tmp/undo'
if !isdirectory(&undodir)
  call mkdir(iconv(&undodir, &encoding, &termencoding), 'p')
endif

augroup BufferAu
    autocmd!
    " カレントディレクトリを自動的に移動
    autocmd BufNewFile,BufRead,BufEnter * if isdirectory(expand("%:p:h")) && bufname("%") !~ "NERD_tree" | cd %:p:h | endif
  augroup END
noremap <CR> o<ESC>

set nocompatible  " Use Vim defaults instead of 100% vi compatibility
" Now we set some defaults for the editor
set history=100 " keep 100 lines of command line history
set ruler   " show the cursor position all the time
" Suffixes that get lower priority when doing tab completion for filenames.
" These are files we are not likely to want to edit or read.
set suffixes=.bak,~,.swp,.o,.info,.aux,.log,.dvi,.bbl,.blg,.brf,.cb,.ind,.idx,.ilg,.inx,.out,.toc

syntax on
if has("autocmd")
  " Enabled file type detection
  " Use the default filetype settings. If you also want to load indent files
  " to automatically do language-dependent indenting add 'indent' as well.
  filetype plugin on
  "そのファイルタイプにあわせたインデントを利用する
  filetype indent on
  " これらのftではインデントを無効に
  "autocmd FileType php filetype indent off
 
  " autocmd FileType php :set indentexpr=
  autocmd FileType html :set indentexpr=
  autocmd FileType xhtml :set indentexpr=
endif
"インデントはスマートインデント
set smartindent
"検索文字列が小文字の場合は大文字小文字を区別なく検索する
set ignorecase
"検索文字列に大文字が含まれている場合は区別して検索する
set smartcase
"検索時に最後まで行ったら最初に戻る
set wrapscan
"検索文字列入力時に順次対象文字列にヒットさせない
set noincsearch
"タブの左側にカーソル表示
"set listchars=tab:\\
set nolist
"入力中のコマンドをステータスに表示する
set showcmd
"括弧入力時の対応する括弧を表示
set showmatch
"ステータスラインを常に表示
set laststatus=2

" コマンドライン補間をシェルっぽく
set wildmode=list:longest
" バッファが編集中でもその他のファイルを開けるように
set hidden
" 外部のエディタで編集中のファイルが変更されたら自動で読み直す
set autoread

" 検索後、真ん中にフォーカスをあわせる
nmap n nzz
nmap N Nzz
nmap * *zz
nmap # #zz
nmap g* g*zz
nmap g# g#zz

"insert mode時にc-jで抜ける
imap <C-j> <esc>

" 文字コードの自動認識
if &encoding !=# 'utf-8'
  set encoding=japan
  set fileencoding=japan
endif
if has('iconv')
  let s:enc_euc = 'euc-jp'
  let s:enc_jis = 'iso-2022-jp'
  " iconvがeucJP-msに対応しているかをチェック
  if iconv("\x87\x64\x87\x6a", 'cp932', 'eucjp-ms') ==# "\xad\xc5\xad\xcb"
    let s:enc_euc = 'eucjp-ms'
    let s:enc_jis = 'iso-2022-jp-3'
  " iconvがJISX0213に対応しているかをチェック
  elseif iconv("\x87\x64\x87\x6a", 'cp932', 'euc-jisx0213') ==# "\xad\xc5\xad\xcb"
    let s:enc_euc = 'euc-jisx0213'
    let s:enc_jis = 'iso-2022-jp-3'
  endif
  " fileencodingsを構築
  if &encoding ==# 'utf-8'
    let s:fileencodings_default = &fileencodings
    let &fileencodings = s:enc_jis .','. s:enc_euc .',cp932'
    let &fileencodings = &fileencodings .','. s:fileencodings_default
    unlet s:fileencodings_default
  else
    let &fileencodings = &fileencodings .','. s:enc_jis
    set fileencodings+=utf-8,ucs-2le,ucs-2
    if &encoding =~# '^\(euc-jp\|euc-jisx0213\|eucjp-ms\)$'
      set fileencodings+=cp932
      set fileencodings-=euc-jp
      set fileencodings-=euc-jisx0213
      set fileencodings-=eucjp-ms
      let &encoding = s:enc_euc
      let &fileencoding = s:enc_euc
    else
      let &fileencodings = &fileencodings .','. s:enc_euc
    endif
  endif
  " 定数を処分
  unlet s:enc_euc
  unlet s:enc_jis
endif

" 日本語を含まない場合は fileencoding に encoding を使うようにする
if has('autocmd')
  function! AU_ReCheck_FENC()
    if &fileencoding =~# 'iso-2022-jp' && search("[^\x01-\x7e]", 'n') == 0
      let &fileencoding=&encoding
    endif
  endfunction
  autocmd BufReadPost * call AU_ReCheck_FENC()
endif

" 改行コードの自動認識
set fileformats=unix,dos,mac
" □とか○の文字があってもカーソル位置がずれないようにする
if exists('&ambiwidth')
  set ambiwidth=double
endif

set visualbell
"-------------------------------------------------------------------------------
" 基本設定 Basics
"-------------------------------------------------------------------------------
let mapleader = ","              " キーマップリーダー
set scrolloff=5                  " スクロール時の余白確保
set textwidth=0                  " 一行に長い文章を書いていても自動折り返しをしない
"set nobackup                     " バックアップ取らない
set autoread                     " 他で書き換えられたら自動で読み直す
"set noswapfile                   " スワップファイル作らない
"set hidden                       " 編集中でも他のファイルを開けるようにする
set backspace=indent,eol,start   " バックスペースでなんでも消せるように
set formatoptions=lmoq           " テキスト整形オプション，マルチバイト系を追加
set vb t_vb=                     " ビープをならさない
set browsedir=buffer             " Exploreの初期ディレクトリ
set whichwrap=b,s,h,l,<,>,[,]    " カーソルを行頭、行末で止まらないようにする
set showcmd                      " コマンドをステータス行に表示
set showmode                     " 現在のモードを表示
set viminfo='50,<1000,s100,\"50  " viminfoファイルの設定
"set modelines=0                  " モードラインは無効
"set notitle                      " vimを使ってくれてありがとう

" OSのクリップボードを使用する
set clipboard+=unnamed
" ターミナルでマウスを使用できるようにする
set ttymouse=xterm2

" 挿入モードでCtrl+pを押すとクリップボードの内容を貼り付けられるようにする "
imap <C-p>  <ESC>"*pa

" Ev/Rvでvimrcの編集と反映
if has('win32')
  let $MYVIMRC = g:my_vim_dir . '/gvimrc'
else
  let $MYVIMRC = $HOME . '/.gvimrc'
endif
command! Ev edit $MYVIMRC
command! Rv source $MYVIMRC

set helpfile=$VIMRUNTIME/doc/help.txt

" Some Linux distributions set filetype in /etc/vimrc.
"   " Clear filetype flags before changing runtimepath to force Vim to
"   reload them.
if exists("g:did_load_filetypes")
  filetype off
  filetype plugin indent off
endif

"ファイルタイプ判定をon
filetype plugin on

set cursorline

augroup hack234
  autocmd!
  if has('win32')
    autocmd FocusGained * set transparency=255
    autocmd FocusLost * set transparency=200
  endif
augroup END

"unite prefix key.
nnoremap [unite] <Nop>
nmap <Space>f [unite]
 
"unite general settings
"インサートモードで開始
"let g:unite_enable_start_insert = 1
"最近開いたファイル履歴の保存数
let g:unite_source_file_mru_limit = 50
 
"file_mruの表示フォーマットを指定。空にすると表示スピードが高速化される
let g:unite_source_file_mru_filename_format = ''
 
"現在開いているファイルのディレクトリ下のファイル一覧。
"開いていない場合はカレントディレクトリ
nnoremap <silent> [unite]f :<C-u>UniteWithBufferDir -buffer-name=files file<CR>
"バッファ一覧
nnoremap <silent> [unite]b :<C-u>Unite buffer<CR>
"レジスタ一覧
nnoremap <silent> [unite]r :<C-u>Unite -buffer-name=register register<CR>
"最近使用したファイル一覧
nnoremap <silent> [unite]m :<C-u>Unite file_mru<CR>
"ブックマーク一覧
nnoremap <silent> [unite]c :<C-u>Unite bookmark<CR>
"ブックマークに追加
nnoremap <silent> [unite]a :<C-u>UniteBookmarkAdd<CR>
"uniteを開いている間のキーマッピング
autocmd FileType unite call s:unite_my_settings()
function! s:unite_my_settings()"{{{
	"ESCでuniteを終了
	nmap <buffer> <ESC> <Plug>(unite_exit)
	"入力モードのときjjでノーマルモードに移動
	imap <buffer> jj <Plug>(unite_insert_leave)
	"入力モードのときctrl+wでバックスラッシュも削除
	imap <buffer> <C-w> <Plug>(unite_delete_backward_path)
	"ctrl+jで縦に分割して開く
	nnoremap <silent> <buffer> <expr> <C-j> unite#do_action('split')
	inoremap <silent> <buffer> <expr> <C-j> unite#do_action('split')
	"ctrl+jで横に分割して開く
	nnoremap <silent> <buffer> <expr> <C-l> unite#do_action('vsplit')
	inoremap <silent> <buffer> <expr> <C-l> unite#do_action('vsplit')
	"ctrl+oでその場所に開く
	nnoremap <silent> <buffer> <expr> <C-o> unite#do_action('open')
	inoremap <silent> <buffer> <expr> <C-o> unite#do_action('open')
endfunction"}}}

"set renderoptions:type:directx,renmode:5,taamode:1,geom:1,gamma:1900,contrast:1,level:100
"set renderoptions:type:directx,renmode:5,taamode:1,geom:1,gamma:1,contrast:1,level:100
set renderoptions:type:directx,renmode:5,taamode:1,geom:1,gamma:1.0,contrast:1.0,level:1.0
"set renderoptions:type:directx,renmode:5,geom:1,taamode:1,gamma:1.7,level:90
"set renderoptions:type:directx,renmode:5,geom:1,gamma:1.9,level:1
"set renderoptions:type:directx,renmode:5,geom:1,gamma:1,level:100
"set renderoptions:type:directx,renmode:5,geom:1,level:100
"set renderoptions:type:directx,renmode:5,geom:1,level:100,gamma:1,contrast:1

"英語メニューにする
source $VIMRUNTIME/delmenu.vim 
set langmenu=none 
source $VIMRUNTIME/menu.vim
set printheader=%<%f%h%m%=Page\ %N

"AirlineTheme powerlineish
"AirlineTheme xtermlight
AirlineTheme dark

" タブページを常に表示
set showtabline=2
" gVimでもテキストベースのタブページを使う
set guioptions-=e
