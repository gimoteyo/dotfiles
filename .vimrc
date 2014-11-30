"---------------------------
" Start Vim Settings.
"---------------------------

" 行数表示
set number
" バックアップファイルを作らない
set nobackup
" .swapファイルを作らない
set noswapfile

" シンタックス表示
syntax on
" エンコード
set encoding=utf8
" ファイルエンコード
set fileencoding=utf8

" スペースのインデントのサイズ
set softtabstop=2
set shiftwidth=2

" 検索結果をハイライト表示
set hlsearch
" カラースキーマ設定
colorscheme desert
" クリップボードの共有
set clipboard=unnamed

"---------------------------
" Start Neobundle Settings.
"---------------------------

if !1 | finish | endif

if has('vim_starting')
  set nocompatible               " Be iMproved

  " Required:
  set runtimepath+=~/.vim/bundle/neobundle.vim/
endif

" Required:
call neobundle#begin(expand('~/.vim/bundle/'))
 
" neobundle自体をneobundleで管理
NeoBundleFetch 'Shougo/neobundle.vim'
 
"---------------------------
" Start Plugins Settings.
"---------------------------

" クイックラン
NeoBundle 'thinca/vim-quickrun'
" マークダウンプレビュー
NeoBundle 'kannokanno/previm'
NeoBundle 'tyru/open-browser.vim'
 
"---------------------------
" End Plugins Settings.
"---------------------------

call neobundle#end()
 
" Required:
filetype plugin indent on
 
NeoBundleCheck
 
"-------------------------
" End Neobundle Settings.
"-------------------------

"-------------------------
" START Previm Settings.
"-------------------------
augroup PrevimSettings
  autocmd!
  autocmd BufNewFile,BufRead *.{md,mdwn,mkd,mkdn,mark*} set filetype=markdown
augroup END
"-------------------------
" END Previm Settings.
"-------------------------
