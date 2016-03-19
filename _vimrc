" Bundle Config Start
filetype off

if has('vim_starting')
  set nocompatible
  " ����N�����̂�runtimepath��neobundle�̃p�X���w�肷��
  set runtimepath+=$VIM/bundle/neobundle.vim/
endif

" NeoBundle��������
let bundlePath = $VIM . '/bundle/'
call neobundle#begin(expand(bundlePath))

" �C���X�g�[������v���O�C���������ɋL�q
NeoBundle 'Shougo/unite.vim'
NeoBundle 'Shougo/vimfiler'
NeoBundle 'itchyny/lightline.vim'

call neobundle#end()

filetype on
filetype plugin indent on
" Bundle Config End
