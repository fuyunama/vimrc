scriptencoding utf-8
" vim:set ts=8 sts=2 sw=2 tw=0: (���̍s�Ɋւ��Ă�:help modeline���Q��)
"
" An example for a Japanese version gvimrc file.
" ���{��ł̃f�t�H���gGUI�ݒ�t�@�C��(gvimrc) - Vim7�p����
"
" Last Change: 19-Nov-2016.
" Maintainer:  MURAOKA Taro <koron@tka.att.ne.jp>
"
" ���:
" ���̃t�@�C���ɂ�Vim�̋N�����ɕK���ݒ肳���AGUI�֘A�̐ݒ肪������Ă���
" ���B�ҏW���̋����Ɋւ���ݒ��vimrc�ɏ�������Ă��܂��B
"
" �l�p�ݒ��_gvimrc�Ƃ����t�@�C�����쐬�������ōs�Ȃ��܂��B_gvimrc�͂���
" �t�@�C���̌�ɓǍ��܂�邽�߁A�����ɏ����ꂽ���e���㏑�����Đݒ肷�邱�Ƃ�
" �o���܂��B_gvimrc��$HOME�܂���$VIM�ɒu���Ă����K�v������܂��B$HOME��$VIM
" �����D�悳��A$HOME�ł݂������ꍇ$VIM�͓Ǎ��܂�܂���B
"
" �Ǘ��Ҍ����ɖ{�ݒ�t�@�C���𒼐ڏ����������ɍς܂��邱�Ƃ�ړI�Ƃ��āA�T�C
" �g���[�J���Ȑݒ��ʃt�@�C���ōs�Ȃ���悤�ɔz�����Ă���܂��BVim�N������
" �T�C�g���[�J���Ȑݒ�t�@�C��($VIM/gvimrc_local.vim)�����݂���Ȃ�΁A�{��
" ��t�@�C���̎�v�������ǂݍ��܂��O�Ɏ����I�ɓǂݍ��݂܂��B
"
" �ǂݍ��݌�A�ϐ�g:gvimrc_local_finish����0�̒l�ɐݒ肳��Ă����ꍇ�ɂ͖{��
" ��t�@�C���ɏ����ꂽ���e�͈�؎��s����܂���B�f�t�H���g�����S�č����ւ�
" �����ꍇ�ɗ��p���ĉ������B
"
" �Q�l:
"   :help gvimrc
"   :echo $HOME
"   :echo $VIM
"   :version

"---------------------------------------------------------------------------
" �T�C�g���[�J���Ȑݒ�($VIM/gvimrc_local.vim)������Γǂݍ��ށB�ǂݍ��񂾌�
" �ɕϐ�g:gvimrc_local_finish�ɔ�0�Ȓl���ݒ肳��Ă����ꍇ�ɂ́A����ȏ�̐�
" ��t�@�C���̓Ǎ��𒆎~����B
if 1 && filereadable($VIM . '/gvimrc_local.vim')
  source $VIM/gvimrc_local.vim
  if exists('g:gvimrc_local_finish') && g:gvimrc_local_finish != 0
    finish
  endif
endif

"---------------------------------------------------------------------------
" ���[�U�D��ݒ�($HOME/.gvimrc_first.vim)������Γǂݍ��ށB�ǂݍ��񂾌�ɕ�
" ��g:gvimrc_first_finish�ɔ�0�Ȓl���ݒ肳��Ă����ꍇ�ɂ́A����ȏ�̐ݒ�
" �t�@�C���̓Ǎ��𒆎~����B
if 0 && exists('$HOME') && filereadable($HOME . '/.gvimrc_first.vim')
  unlet! g:gvimrc_first_finish
  source $HOME/.gvimrc_first.vim
  if exists('g:gvimrc_first_finish') && g:gvimrc_first_finish != 0
    finish
  endif
endif

"---------------------------------------------------------------------------
" Bram���̒񋟂���ݒ����C���N���[�h (�ʃt�@�C��:vimrc_example.vim)�B����
" �ȑO��g:no_gvimrc_example�ɔ�0�Ȓl��ݒ肵�Ă����΃C���N���[�h���Ȃ��B
if 1 && (!exists('g:no_gvimrc_example') || g:no_gvimrc_example == 0)
  source $VIMRUNTIME/gvimrc_example.vim
endif

"---------------------------------------------------------------------------
" �J���[�ݒ�:
set background=dark
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
"colorscheme github
"colorscheme PaperColor

"---------------------------------------------------------------------------
" �t�H���g�ݒ�:
"
if has('win32')
  " Windows�p
  "set guifont=McS_Konatu:h8:cSHIFTJIS
  "set guifont=MyricaM_M:h12:cSHIFTJIS
  set guifont=Myrica_M:h12:cSHIFTJIS

  " �s�Ԋu�̐ݒ�
  set linespace=0
  " �ꕔ��UCS�����̕��������v�����Č��߂�
  if has('kaoriya')
    set ambiwidth=auto
  endif
elseif has('mac')
  set guifont=Osaka??????��:h14
elseif has('xfontset')
  " UNIX�p (xfontset���g�p)
  set guifontset=a14,r14,k14
endif

"---------------------------------------------------------------------------
" �E�C���h�E�Ɋւ���ݒ�:
"
" �E�C���h�E�̕�
"set columns=80
" �E�C���h�E�̍���
"set lines=54
" �R�}���h���C���̍���(GUI�g�p��)
set cmdheight=1
"---------------------------------------------------------------------------
" ���{����͂Ɋւ���ݒ�:
"
if has('multi_byte_ime') || has('xim')
  " IME ON���̃J�[�\���̐F��ݒ�(�ݒ��:��)
  highlight CursorIM guibg=Purple guifg=NONE
  " �}�����[�h�E�������[�h�ł̃f�t�H���g��IME��Ԑݒ�
  set iminsert=0 imsearch=0
  if has('xim') && has('GUI_GTK')
    " XIM�̓��͊J�n�L�[��ݒ�:
    " ���L�� s-space ��Shift+Space�̈Ӗ���kinput2+canna�p�ݒ�
    "set imactivatekey=s-space
  endif
  " �}�����[�h�ł�IME��Ԃ��L�������Ȃ��ꍇ�A���s�̃R�����g������
  inoremap <silent> <ESC> <ESC>:set iminsert=0<CR>
endif

"---------------------------------------------------------------------------
" �}�E�X�Ɋւ���ݒ�:
"
" ���:
" mousefocus�͊�����(���:�E�B���h�E�𕪊����Ă��郉�C���ɃJ�[�\��������
" �Ă��鎞�̋���)������̂Ńf�t�H���g�ł͐ݒ肵�Ȃ��BWindows�ł�mousehide
" ���A�}�E�X�J�[�\����Vim�̃^�C�g���o�[�ɒu�����{�����͂���ƃ`���`������
" �Ƃ������������N���B
"
" �ǂ̃��[�h�ł��}�E�X���g����悤�ɂ���
set mouse=a
" �}�E�X�̈ړ��Ńt�H�[�J�X�������I�ɐؑւ��Ȃ� (mousefocus:�ؑւ�)
set nomousefocus
" ���͎��Ƀ}�E�X�|�C���^���B�� (nomousehide:�B���Ȃ�)
set mousehide
" �r�W���A���I��(D&D��)�������I�ɃN���b�v�{�[�h�� (:help guioptions_a)
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
" ���j���[�Ɋւ���ݒ�:
"
" ���:
" "M"�I�v�V�������w�肳�ꂽ�Ƃ��̓��j���[("m")�E�c�[���o�[("T")���ɓo�^����
" �Ȃ��̂ŁA�����I�ɂ����̗̈���폜����悤�ɂ����B����āA�f�t�H���g�̂�
" ���𖳎����ă��[�U���Ǝ��̈ꎮ��o�^�����ꍇ�ɂ́A����炪�\������Ȃ���
" ������肪��������B���������܂�Ƀ��A�ȃP�[�X�ł���ƍl������̂Ŗ�����
" ��B
"
if &guioptions =~# 'M'
  let &guioptions = substitute(&guioptions, '[mT]', '', 'g')
endif

"---------------------------------------------------------------------------
" ���̑��A���h���Ɋւ���ݒ�:
"
" ������������n�C���C�g���Ȃ�(_vimrc�ł͂Ȃ�_gvimrc�Őݒ肷��K�v������)
"set nohlsearch

"---------------------------------------------------------------------------
" ����Ɋւ���ݒ�:
"
" ����:
" �����GUI�łȂ��Ă��ł���̂�vimrc�Őݒ肵���ق����ǂ���������Ȃ��B���̕�
" ���Windows�ł͂��Ȃ�B���B��ʓI�Ɉ���ɂ͖����A�ƌ����邱�Ƃ�����炵
" ���̂Ńf�t�H���g�t�H���g�͖����ɂ��Ă����B�S�V�b�N���g�������ꍇ�̓R�����g
" �A�E�g���Ă���printfont���Q�l�ɁB
"
" �Q�l:
"   :hardcopy
"   :help 'printfont'
"   :help printing
"
" ����p�t�H���g
if has('printer')
  if has('win32')
    set printfont=MS_Gothic:h12:cSHIFTJIS
  endif
endif

" Copyright (C) 2009-2013 KaoriYa/MURAOKA Taro
"�ȏ�A���艮�̐ݒ�
"My settings are below.

filetype plugin on
set expandtab
set shiftwidth=4
set tabstop=4
set softtabstop=4

let &directory = g:my_vim_dir . '/tmp'
let &backupdir = g:my_vim_dir . '/tmp/backup'
let &undodir = g:my_vim_dir . '/tmp/undo'

augroup BufferAu
    autocmd!
    " �J�����g�f�B���N�g���������I�Ɉړ�
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
  "���̃t�@�C���^�C�v�ɂ��킹���C���f���g�𗘗p����
  filetype indent on
  " ������ft�ł̓C���f���g�𖳌���
  "autocmd FileType php filetype indent off
 
  " autocmd FileType php :set indentexpr=
  autocmd FileType html :set indentexpr=
  autocmd FileType xhtml :set indentexpr=
endif
"�C���f���g�̓X�}�[�g�C���f���g
set smartindent
"���������񂪏������̏ꍇ�͑啶������������ʂȂ���������
set ignorecase
"����������ɑ啶�����܂܂�Ă���ꍇ�͋�ʂ��Č�������
set smartcase
"�������ɍŌ�܂ōs������ŏ��ɖ߂�
set wrapscan
"������������͎��ɏ����Ώە�����Ƀq�b�g�����Ȃ�
set noincsearch
"�^�u�̍����ɃJ�[�\���\��
"set listchars=tab:\\
set nolist
"���͒��̃R�}���h���X�e�[�^�X�ɕ\������
set showcmd
"���ʓ��͎��̑Ή����銇�ʂ�\��
set showmatch
"�X�e�[�^�X���C������ɕ\��
set laststatus=2

" �R�}���h���C����Ԃ��V�F�����ۂ�
set wildmode=list:longest
" �o�b�t�@���ҏW���ł����̑��̃t�@�C�����J����悤��
set hidden
" �O���̃G�f�B�^�ŕҏW���̃t�@�C�����ύX���ꂽ�玩���œǂݒ���
set autoread

" ������A�^�񒆂Ƀt�H�[�J�X�����킹��
nmap n nzz
nmap N Nzz
nmap * *zz
nmap # #zz
nmap g* g*zz
nmap g# g#zz

"insert mode����c-j�Ŕ�����
imap <C-j> <esc>

" �����R�[�h�̎����F��
if &encoding !=# 'utf-8'
  set encoding=japan
  set fileencoding=japan
endif
if has('iconv')
  let s:enc_euc = 'euc-jp'
  let s:enc_jis = 'iso-2022-jp'
  " iconv��eucJP-ms�ɑΉ����Ă��邩���`�F�b�N
  if iconv("\x87\x64\x87\x6a", 'cp932', 'eucjp-ms') ==# "\xad\xc5\xad\xcb"
    let s:enc_euc = 'eucjp-ms'
    let s:enc_jis = 'iso-2022-jp-3'
  " iconv��JISX0213�ɑΉ����Ă��邩���`�F�b�N
  elseif iconv("\x87\x64\x87\x6a", 'cp932', 'euc-jisx0213') ==# "\xad\xc5\xad\xcb"
    let s:enc_euc = 'euc-jisx0213'
    let s:enc_jis = 'iso-2022-jp-3'
  endif
  " fileencodings���\�z
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
  " �萔������
  unlet s:enc_euc
  unlet s:enc_jis
endif

" ���{����܂܂Ȃ��ꍇ�� fileencoding �� encoding ���g���悤�ɂ���
if has('autocmd')
  function! AU_ReCheck_FENC()
    if &fileencoding =~# 'iso-2022-jp' && search("[^\x01-\x7e]", 'n') == 0
      let &fileencoding=&encoding
    endif
  endfunction
  autocmd BufReadPost * call AU_ReCheck_FENC()
endif

" ���s�R�[�h�̎����F��
set fileformats=unix,dos,mac
" ���Ƃ����̕����������Ă��J�[�\���ʒu������Ȃ��悤�ɂ���
if exists('&ambiwidth')
  set ambiwidth=double
endif

set visualbell
"-------------------------------------------------------------------------------
" ��{�ݒ� Basics
"-------------------------------------------------------------------------------
let mapleader = ","              " �L�[�}�b�v���[�_�[
set scrolloff=5                  " �X�N���[�����̗]���m��
set textwidth=0                  " ��s�ɒ������͂������Ă��Ă������܂�Ԃ������Ȃ�
"set nobackup                     " �o�b�N�A�b�v���Ȃ�
set autoread                     " ���ŏ���������ꂽ�玩���œǂݒ���
"set noswapfile                   " �X���b�v�t�@�C�����Ȃ�
"set hidden                       " �ҏW���ł����̃t�@�C�����J����悤�ɂ���
set backspace=indent,eol,start   " �o�b�N�X�y�[�X�łȂ�ł�������悤��
set formatoptions=lmoq           " �e�L�X�g���`�I�v�V�����C�}���`�o�C�g�n��ǉ�
set vb t_vb=                     " �r�[�v���Ȃ炳�Ȃ�
set browsedir=buffer             " Explore�̏����f�B���N�g��
set whichwrap=b,s,h,l,<,>,[,]    " �J�[�\�����s���A�s���Ŏ~�܂�Ȃ��悤�ɂ���
set showcmd                      " �R�}���h���X�e�[�^�X�s�ɕ\��
set showmode                     " ���݂̃��[�h��\��
set viminfo='50,<1000,s100,\"50  " viminfo�t�@�C���̐ݒ�
"set modelines=0                  " ���[�h���C���͖���
"set notitle                      " vim���g���Ă���Ă��肪�Ƃ�

" OS�̃N���b�v�{�[�h���g�p����
set clipboard+=unnamed
" �^�[�~�i���Ń}�E�X���g�p�ł���悤�ɂ���
set mouse=a
set guioptions+=a
set ttymouse=xterm2

" �}�����[�h��Ctrl+p�������ƃN���b�v�{�[�h�̓��e��\��t������悤�ɂ��� "
imap <C-p>  <ESC>"*pa

" Ev/Rv��vimrc�̕ҏW�Ɣ��f
let $MYVIMRC = g:my_vim_dir . '/gvimrc'
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

"�t�@�C���^�C�v�����on
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
"�C���T�[�g���[�h�ŊJ�n
"let g:unite_enable_start_insert = 1
"�ŋߊJ�����t�@�C�������̕ۑ���
let g:unite_source_file_mru_limit = 50
 
"file_mru�̕\���t�H�[�}�b�g���w��B��ɂ���ƕ\���X�s�[�h�������������
let g:unite_source_file_mru_filename_format = ''
 
"���݊J���Ă���t�@�C���̃f�B���N�g�����̃t�@�C���ꗗ�B
"�J���Ă��Ȃ��ꍇ�̓J�����g�f�B���N�g��
nnoremap <silent> [unite]f :<C-u>UniteWithBufferDir -buffer-name=files file<CR>
"�o�b�t�@�ꗗ
nnoremap <silent> [unite]b :<C-u>Unite buffer<CR>
"���W�X�^�ꗗ
nnoremap <silent> [unite]r :<C-u>Unite -buffer-name=register register<CR>
"�ŋߎg�p�����t�@�C���ꗗ
nnoremap <silent> [unite]m :<C-u>Unite file_mru<CR>
"�u�b�N�}�[�N�ꗗ
nnoremap <silent> [unite]c :<C-u>Unite bookmark<CR>
"�u�b�N�}�[�N�ɒǉ�
nnoremap <silent> [unite]a :<C-u>UniteBookmarkAdd<CR>
"unite���J���Ă���Ԃ̃L�[�}�b�s���O
autocmd FileType unite call s:unite_my_settings()
function! s:unite_my_settings()"{{{
	"ESC��unite���I��
	nmap <buffer> <ESC> <Plug>(unite_exit)
	"���̓��[�h�̂Ƃ�jj�Ńm�[�}�����[�h�Ɉړ�
	imap <buffer> jj <Plug>(unite_insert_leave)
	"���̓��[�h�̂Ƃ�ctrl+w�Ńo�b�N�X���b�V�����폜
	imap <buffer> <C-w> <Plug>(unite_delete_backward_path)
	"ctrl+j�ŏc�ɕ������ĊJ��
	nnoremap <silent> <buffer> <expr> <C-j> unite#do_action('split')
	inoremap <silent> <buffer> <expr> <C-j> unite#do_action('split')
	"ctrl+j�ŉ��ɕ������ĊJ��
	nnoremap <silent> <buffer> <expr> <C-l> unite#do_action('vsplit')
	inoremap <silent> <buffer> <expr> <C-l> unite#do_action('vsplit')
	"ctrl+o�ł��̏ꏊ�ɊJ��
	nnoremap <silent> <buffer> <expr> <C-o> unite#do_action('open')
	inoremap <silent> <buffer> <expr> <C-o> unite#do_action('open')
endfunction"}}}

set encoding=utf-8
"set renderoptions:type:directx,renmode:5,taamode:1,geom:1,gamma:1900,contrast:1,level:100
set renderoptions:type:directx,renmode:5,geom:1,taamode:1,gamma:1.7,level:90

"�p�ꃁ�j���[�ɂ���
source $VIMRUNTIME/delmenu.vim 
set langmenu=none 
source $VIMRUNTIME/menu.vim
set printheader=%<%f%h%m%=Page\ %N

AirlineTheme dark

" �^�u�y�[�W����ɕ\��
set showtabline=2
" gVim�ł��e�L�X�g�x�[�X�̃^�u�y�[�W���g��
set guioptions-=e
