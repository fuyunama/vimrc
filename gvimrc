" vim:set ts=8 sts=2 sw=2 tw=0: (���ιԤ˴ؤ��Ƥ�:help modeline�򻲾�)
"
" An example for a Japanese version gvimrc file.
" ���ܸ��ǤΥǥե����GUI����ե�����(gvimrc) - Vim7�ѻ��
"
" Last Change: 19-Sep-2015.
" Maintainer:  MURAOKA Taro <koron@tka.att.ne.jp>
"
" ����:
" ���Υե�����ˤ�Vim�ε�ư����ɬ�����ꤵ��롢GUI��Ϣ�����꤬�񤫤�Ƥ���
" �����Խ����ε�ư�˴ؤ��������vimrc�˽񤫤���Ƥ��ޤ���
"
" �Ŀ��������_gvimrc�Ȥ����ե����������������ǹԤʤ��ޤ���_gvimrc�Ϥ���
" �ե�����θ���ɹ��ޤ�뤿�ᡢ�����˽񤫤줿���Ƥ��񤭤������ꤹ�뤳�Ȥ�
" ����ޤ���_gvimrc��$HOME�ޤ���$VIM���֤��Ƥ���ɬ�פ�����ޤ���$HOME��$VIM
" ����ͥ�褵�졢$HOME�ǤߤĤ��ä����$VIM���ɹ��ޤ�ޤ���
"
" �����Ը�����������ե������ľ�ܽ񤭴������˺Ѥޤ��뤳�Ȥ���Ū�Ȥ��ơ�����
" �ȥ������������̥ե�����ǹԤʤ���褦����θ���Ƥ���ޤ���Vim��ư����
" �����ȥ����������ե�����($VIM/gvimrc_local.vim)��¸�ߤ���ʤ�С�����
" ��ե�����μ�����ʬ���ɤ߹��ޤ�����˼�ưŪ���ɤ߹��ߤޤ���
"
" �ɤ߹��߸塢�ѿ�g:gvimrc_local_finish����0���ͤ����ꤵ��Ƥ������ˤ�����
" ��ե�����˽񤫤줿���Ƥϰ��ڼ¹Ԥ���ޤ��󡣥ǥե����ư������ƺ����ؤ�
" �����������Ѥ��Ʋ�������
"
" ����:
"   :help gvimrc
"   :echo $HOME
"   :echo $VIM
"   :version
"---------------------------------------------------------------------------
" �����ȥ����������($VIM/gvimrc_local.vim)��������ɤ߹��ࡣ�ɤ߹������
" ���ѿ�g:gvimrc_local_finish����0���ͤ����ꤵ��Ƥ������ˤϡ�����ʾ����
" ��ե�������ɹ�����ߤ��롣
if 1 && filereadable($VIM . '/gvimrc_local.vim')
  source $VIM/gvimrc_local.vim
  if exists('g:gvimrc_local_finish') && g:gvimrc_local_finish != 0
    finish
  endif
endif
"---------------------------------------------------------------------------
" �桼��ͥ������($HOME/.gvimrc_first.vim)��������ɤ߹��ࡣ�ɤ߹���������
" ��g:gvimrc_first_finish����0���ͤ����ꤵ��Ƥ������ˤϡ�����ʾ������
" �ե�������ɹ�����ߤ��롣
if 0 && exists('$HOME') && filereadable($HOME . '/.gvimrc_first.vim')
  unlet! g:gvimrc_first_finish
  source $HOME/.gvimrc_first.vim
  if exists('g:gvimrc_first_finish') && g:gvimrc_first_finish != 0
    finish
  endif
endif
"---------------------------------------------------------------------------
" Bram����󶡤���������򥤥󥯥롼�� (�̥ե�����:vimrc_example.vim)������
" ������g:no_gvimrc_example����0���ͤ����ꤷ�Ƥ����Х��󥯥롼�ɤ��ʤ���
if 1 && (!exists('g:no_gvimrc_example') || g:no_gvimrc_example == 0)
  source $VIMRUNTIME/gvimrc_example.vim
endif
"---------------------------------------------------------------------------
" ���顼����:
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
colorscheme gentooish

"---------------------------------------------------------------------------
" �ե��������:
"
if has('win32')
  " Windows��
  "set guifont=McS_Konatu:h8:cSHIFTJIS
  "set guifont="�椿�ݤ�ʥ����ǥ��󥰡�Backsl:h11:cSHIFTJIS"
  "set guifont=KonatuTohaba:h11:cSHIFTJIS
  set guifont=Migu_1M:h12:cSHIFTJIS
  " �Դֳ֤�����
  set linespace=0
  " ������UCSʸ��������ư��¬���Ʒ���
  if has('kaoriya')
    set ambiwidth=auto
  endif
elseif has('mac')
  set guifont=Osaka??????��:h14
elseif has('xfontset')
  " UNIX�� (xfontset�����)
  set guifontset=a14,r14,k14
endif
"set guifont=UmePlus\ Gothic\ 12
"---------------------------------------------------------------------------
" ������ɥ��˴ؤ�������:
"
"
" ������ɥ�����
" ������ɥ��ι⤵
"set lines=54
" ���ޥ�ɥ饤��ι⤵(GUI���ѻ�)
set cmdheight=1
" ���̤���Ϥ���ˤ��� (���Ԥ���Ƭ�� " ���������ͭ���ˤʤ�)
"colorscheme evening " (GUI���ѻ�)
set clipboard=unnamed
"---------------------------------------------------------------------------
" ���ܸ����Ϥ˴ؤ�������:
"
if has('multi_byte_ime') || has('xim')
  " IME ON���Υ�������ο�������(������:��)
  highlight CursorIM guibg=Purple guifg=NONE
  " �����⡼�ɡ������⡼�ɤǤΥǥե���Ȥ�IME��������
  set iminsert=0 imsearch=0
  if has('xim') && has('GUI_GTK')
    " XIM�����ϳ��ϥ���������:
    " ������ s-space ��Shift+Space�ΰ�̣��kinput2+canna������
    " set imactivatekey=s-space
  endif
  " �����⡼�ɤǤ�IME���֤򵭲������ʤ���硢���ԤΥ����Ȥ���
  inoremap <silent> <ESC> <ESC>:set iminsert=0<CR>
endif

set fileencoding=utf-8
"---------------------------------------------------------------------------
" �ޥ����˴ؤ�������:
"
" ����:
" mousefocus�ϴ��Ĥ�����(����:������ɥ���ʬ�䤷�Ƥ���饤��˥������뤬����
" �Ƥ�����ε�ư)������Τǥǥե���ȤǤ����ꤷ�ʤ���Windows�Ǥ�mousehide
" �����ޥ������������Vim�Υ����ȥ�С����֤����ܸ�����Ϥ���ȥ�����餹��
" �Ȥ�����������������
"
" �ɤΥ⡼�ɤǤ�ޥ�����Ȥ���褦�ˤ���
set mouse=a
" �ޥ����ΰ�ư�ǥե���������ưŪ�����ؤ��ʤ� (mousefocus:���ؤ�)
set nomousefocus
" ���ϻ��˥ޥ����ݥ��󥿤򱣤� (nomousehide:�����ʤ�)
set mousehide
" �ӥ��奢������(D&D¾)��ưŪ�˥���åץܡ��ɤ� (:help guioptions_a)
"set guioptions+=a
set guioptions+=""
"set guioptions+=M
set guioptions-=T
set guioptions-=L
set guioptions-=r
set guioptions-=g
set guioptions-=e
set guioptions+=m
"---------------------------------------------------------------------------
" ��˥塼�˴ؤ�������:
"
" ����:
" "M"���ץ���󤬻��ꤵ�줿�Ȥ��ϥ�˥塼("m")���ġ���С�("T")������Ͽ����
" �ʤ��Τǡ���ưŪ�ˤ������ΰ��������褦�ˤ�������äơ��ǥե���ȤΤ�
" ����̵�뤷�ƥ桼�����ȼ��ΰ켰����Ͽ�������ˤϡ�����餬ɽ������ʤ���
" �������꤬�������롣���������ޤ�˥쥢�ʥ������Ǥ���ȹͤ�����Τ�̵�뤹
" �롣
"
if &guioptions =~# 'M'
  let &guioptions = substitute(&guioptions, '[mT]', '', 'g')
endif
"---------------------------------------------------------------------------
" ����¾�����ɤ��˴ؤ�������:
"
" ����ʸ�����ϥ��饤�Ȥ��ʤ�(_vimrc�ǤϤʤ�_gvimrc�����ꤹ��ɬ�פ�����)
"set nohlsearch
"---------------------------------------------------------------------------
" �����˴ؤ�������:
"
" ���:
" ������GUI�Ǥʤ��Ƥ�Ǥ���Τ�vimrc�����ꤷ���ۤ����ɤ����⤷��ʤ���������
" ���Windows�ǤϤ��ʤ�ۣ�档����Ū�˰����ˤ���ī���ȸ����뤳�Ȥ�����餷
" ���Τǥǥե���ȥե���Ȥ���ī�ˤ��Ƥ����������å���Ȥ��������ϥ�����
" �����Ȥ��Ƥ���printfont�򻲹ͤˡ�
"
" ����:
"   :hardcopy
"   :help 'printfont'
"   :help printing
"
" �����ѥե����
if has('printer')
  if has('win32')
    "set printfont=MS_Mincho:h12:cSHIFTJIS
    set printfont=MS_Gothic:h12:cSHIFTJIS
  endif
endif
" Copyright (C) 2007 KaoriYa/MURAOKA Taro
"source $VIM/runtime/mswin.vim
"let g:orememo_dir = 'C:\.orememo'
"source $VIM/runtime/orememo.vim
"let $PATH = $VIM
set nocp
filetype plugin on
set expandtab
set shiftwidth=2
set tabstop=2
set softtabstop=2
":source $VIMRUNTIME/macros/cd.vim
function InsertTabWrapper()
    if pumvisible()
        return "\<c-n>"
    endif
    let col = col('.') - 1
    if !col || getline('.')[col - 1] !~ '\k\|<\|/'
        return "\<tab>"
    elseif exists('&omnifunc') && &omnifunc == ''
        return "\<c-n>"
    else
        return "\<c-x>\<c-o>"
    endif
endfunction
inoremap <tab> <c-r>=InsertTabWrapper()<cr>
set backupdir=$VIM/backup
augroup BufferAu
    autocmd!
    " �����ȥǥ��쥯�ȥ��ưŪ�˰�ư
    autocmd BufNewFile,BufRead,BufEnter * if isdirectory(expand("%:p:h")) && bufname("%") !~ "NERD_tree" | cd %:p:h | endif
  augroup END
noremap <CR> o<ESC>
set nocompatible  " Use Vim defaults instead of 100% vi compatibility
set backspace=indent,eol,start  " more powerful backspacing
" Now we set some defaults for the editor
set textwidth=0   " Don't wrap words by default
set nobackup    " Don't keep a backup file
set viminfo='50,<1000,s100,\"50 " read/write a .viminfo file, don't store more than
"set viminfo='50,<1000,s100,:0,n~/.vim/viminfo
set history=100   " keep 50 lines of command line history
set ruler   " show the cursor position all the time
" Suffixes that get lower priority when doing tab completion for filenames.
" These are files we are not likely to want to edit or read.
"
set suffixes=.bak,~,.swp,.o,.info,.aux,.log,.dvi,.bbl,.blg,.brf,.cb,.ind,.idx,.ilg,.inx,.out,.toc
syntax on
if has("autocmd")
  " Enabled file type detection
  " Use the default filetype settings. If you also want to load indent files
  " to automatically do language-dependent indenting add 'indent' as well.
  filetype plugin on
  "���Υե����륿���פˤ��碌������ǥ�Ȥ����Ѥ���
  filetype indent on
  " ������ft�Ǥϥ���ǥ�Ȥ�̵����
  "autocmd FileType php filetype indent off
 
  " autocmd FileType php :set indentexpr=
  autocmd FileType html :set indentexpr=
  autocmd FileType xhtml :set indentexpr=
endif
"����ǥ�Ȥϥ��ޡ��ȥ���ǥ��
set smartindent
"����ʸ���󤬾�ʸ���ξ�����ʸ����ʸ������̤ʤ���������
set ignorecase
"����ʸ�������ʸ�����ޤޤ�Ƥ�����϶��̤��Ƹ�������
set smartcase
"�������˺Ǹ�ޤǹԤä���ǽ�����
set wrapscan
"����ʸ�������ϻ��˽缡�о�ʸ����˥ҥåȤ����ʤ�
set noincsearch
"���֤κ�¦�˥�������ɽ��
"set listchars=tab:\\
set nolist
"������Υ��ޥ�ɤ򥹥ơ�������ɽ������
set showcmd
"������ϻ����б������̤�ɽ��
set showmatch
"�������ʸ����Υϥ��饤�Ȥ�ͭ���ˤ��ʤ�
"set nohlsearch
"���ơ������饤�����ɽ��
"���ơ������饤���ɽ�����ʤ�
set laststatus=1
function! GetB()
  let c = matchstr(getline('.'), '.', col('.') - 1)
  let c = iconv(c, &enc, &fenc)
  return String2Hex(c)
endfunction
" :help eval-examples
" The function Nr2Hex() returns the Hex string of a number.
func! Nr2Hex(nr)
  let n = a:nr
  let r = ""
  while n
    let r = '0123456789ABCDEF'[n % 16] . r
    let n = n / 16
  endwhile
  return r
endfunc
" The function String2Hex() converts each character in a string to a two
" character Hex string.
func! String2Hex(str)
  let out = ''
  let ix = 0
  while ix < strlen(a:str)
    let out = out . Nr2Hex(char2nr(a:str[ix]))
    let ix = ix + 1
  endwhile
  return out
endfunc
"���ơ������饤���ʸ�������ɤȲ���ʸ����ɽ������
" set statusline=%<[%n]%m%r%h%w%{'['.(&fenc!=''?&fenc:&enc).':'.&ff.']['.&ft.']'}\ %F%=%l,%c%V%8P
if winwidth(0) >= 120
  set statusline=%<[%n]%m%r%h%w%{'['.(&fenc!=''?&fenc:&enc).':'.&ff.']'}%y\ %F%=[%{GetB()}]\ %l,%c%V%8P
else
  set statusline=%<[%n]%m%r%h%w%{'['.(&fenc!=''?&fenc:&enc).':'.&ff.']'}%y\ %f%=[%{GetB()}]\ %l,%c%V%8P
endif
"set statusline=%{GetB()}
" ���ޥ�ɥ饤���䴰����Ȥ��˶������줿��Τ�Ȥ�(���� :help wildmenu)
" set wildmenu
" ���ޥ�ɥ饤����֤򥷥���äݤ�
set wildmode=list:longest
" �Хåե����Խ���Ǥ⤽��¾�Υե�����򳫤���褦��
set hidden
" �����Υ��ǥ������Խ���Υե����뤬�ѹ����줿�鼫ư���ɤ�ľ��
set autoread
" command mode �� tcsh���Υ����Х���ɤ�
cmap <C-A> <Home>
cmap <C-F> <Right>
cmap <C-B> <Left>
cmap <C-D> <Delete>
cmap <Esc>b <S-Left>
cmap <Esc>f <S-Right>
"ɽ����ñ�̤ǹ԰�ư����
"nmap j gj
"nmap k gk
"vmap j gj
"vmap k gk
" ������Ϥ��
fun! Quote(quote)
  normal mz
  exe 's/\(\k*\%#\k*\)/' . a:quote . '\1' . a:quote . '/'
  normal `zl
endfun
fun! UnQuote()
  normal mz
  exe 's/["' . "'" . ']\(\k*\%#\k*\)[' . "'" . '"]/\1/'
  exe 's/\(["' . "'" . ']\)\(\k*\%#\k*\)\1/\2/'
  normal `z
endfun
nnoremap <silent> ,q" :call Quote('"')<CR>
nnoremap <silent> ,q' :call Quote("'")<CR>
nnoremap <silent> ,qd :call UnQuote()<CR>
" 'quote' a word
nnoremap ,q' :silent! normal mpea'<esc>bi'<esc>`pl
" double "quote" a word
nnoremap ,q" :silent! normal mpea"<esc>bi"<esc>`pl
nnoremap ,q( :silent! normal mpea)<esc>bi(<esc>`pl
nnoremap ,q[ :silent! normal mpea]<esc>bi[<esc>`pl
nnoremap ,q{ :silent! normal mpea}<esc>bi{<esc>`pl
" remove quotes from a word
nnoremap ,qd :silent! normal mpeld bhd `ph<CR>
" �����塢������˥ե��������򤢤碌��
nmap n nzz
nmap N Nzz
nmap * *zz
nmap # #zz
nmap g* g*zz
nmap g# g#zz
"insert mode����c-j��ȴ����
imap <C-j> <esc>

" ʸ�������ɤμ�ưǧ��
if &encoding !=# 'utf-8'
  set encoding=japan
  set fileencoding=japan
endif
if has('iconv')
  let s:enc_euc = 'euc-jp'
  let s:enc_jis = 'iso-2022-jp'
  " iconv��eucJP-ms���б����Ƥ��뤫������å�
  if iconv("\x87\x64\x87\x6a", 'cp932', 'eucjp-ms') ==# "\xad\xc5\xad\xcb"
    let s:enc_euc = 'eucjp-ms'
    let s:enc_jis = 'iso-2022-jp-3'
  " iconv��JISX0213���б����Ƥ��뤫������å�
  elseif iconv("\x87\x64\x87\x6a", 'cp932', 'euc-jisx0213') ==# "\xad\xc5\xad\xcb"
    let s:enc_euc = 'euc-jisx0213'
    let s:enc_jis = 'iso-2022-jp-3'
  endif
  " fileencodings����
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
  " ������ʬ
  unlet s:enc_euc
  unlet s:enc_jis
endif
" ���ܸ��ޤޤʤ����� fileencoding �� encoding ��Ȥ��褦�ˤ���
if has('autocmd')
  function! AU_ReCheck_FENC()
    if &fileencoding =~# 'iso-2022-jp' && search("[^\x01-\x7e]", 'n') == 0
      let &fileencoding=&encoding
    endif
  endfunction
  autocmd BufReadPost * call AU_ReCheck_FENC()
endif
" ���ԥ����ɤμ�ưǧ��
set fileformats=unix,dos,mac
" ���Ȥ�����ʸ�������äƤ⥫��������֤�����ʤ��褦�ˤ���
if exists('&ambiwidth')
  set ambiwidth=double
endif

:set runtimepath+=~/.vim/chalice
:runtime plugin/chalice.vim

"map / :Migemo<CR>

"SSH�ǥե�����򳫤����������
if (has('win32') || has('win64'))
"use scp
"let g:netrw_scp_cmd = "C:\\Users\\sei\\Documents\\tools\\putty\\pscp.exe -q -batch"
let g:netrw_scp_cmd = "C:\\Users\\sei\\Documents\\tools\\putty\\pscp.exe"
let g:netrw_sftp_cmd = "C:\\Users\\sei\\Documents\\tools\\putty\\psftp.exe"
let g:netrw_ssh_cmd = "C:\\Users\\sei\\Documents\\tools\\putty\\plink.exe"
endif

set visualbell
nmap <F8> :TagbarToggle<CR>

"-------------------------------------------------------------------------------
" �������� Basics
"-------------------------------------------------------------------------------
let mapleader = ","              " �����ޥåץ꡼����
set scrolloff=5                  " �����������;�����
set textwidth=0                  " ��Ԥ�Ĺ��ʸ�Ϥ�񤤤Ƥ��Ƥ⼫ư�ޤ��֤��򤷤ʤ�
set nobackup                     " �Хå����å׼��ʤ�
set autoread                     " ¾�ǽ񤭴�����줿�鼫ư���ɤ�ľ��
set noswapfile                   " ����åץե�������ʤ�
set hidden                       " �Խ���Ǥ�¾�Υե�����򳫤���褦�ˤ���
set backspace=indent,eol,start   " �Хå����ڡ����Ǥʤ�Ǥ�ä���褦��
set formatoptions=lmoq           " �ƥ������������ץ���󡤥ޥ���Х��ȷϤ��ɲ�
set vb t_vb=                     " �ӡ��פ�ʤ餵�ʤ�
set browsedir=buffer             " Explore�ν���ǥ��쥯�ȥ�
set whichwrap=b,s,h,l,<,>,[,]    " ����������Ƭ�������ǻߤޤ�ʤ��褦�ˤ���
set showcmd                      " ���ޥ�ɤ򥹥ơ������Ԥ�ɽ��
set showmode                     " ���ߤΥ⡼�ɤ�ɽ��
set viminfo='50,<1000,s100,\"50  " viminfo�ե����������
set modelines=0                  " �⡼�ɥ饤���̵��
set notitle                      " vim��ȤäƤ���Ƥ��꤬�Ȥ�

" OS�Υ���åץܡ��ɤ���Ѥ���
set clipboard+=unnamed
" �����ߥʥ�ǥޥ�������ѤǤ���褦�ˤ���
set mouse=a
set guioptions+=a
set ttymouse=xterm2

"��󥯤���ʸ���ϡ������ƥ�Υ���åץܡ��ɤ������"
set clipboard=unnamed
" �����⡼�ɤ�Ctrl+k�򲡤��ȥ���åץܡ��ɤ����Ƥ�Ž���դ�����褦�ˤ��� "
imap <C-p>  <ESC>"*pa

" Ev/Rv��vimrc���Խ���ȿ��
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

" �ե����륿����Ƚ���on
filetype plugin on

set cursorline
