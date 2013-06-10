set nocompatible               " Be iMproved

if has('vim_starting')
	set runtimepath+=~/.vim/bundle/neobundle.vim/
endif

call neobundle#rc(expand('~/.vim/bundle/'))

" Let NeoBundle manage NeoBundle
NeoBundleFetch 'Shougo/neobundle.vim'

" Recommended to install
" After install, turn shell ~/.vim/bundle/vimproc, (n,g)make -f your_machines_makefile
NeoBundle 'Shougo/vimproc'

" My Bundles here:
"
" Note: You don't set neobundle setting in .gvimrc!
" Original repos on github
NeoBundle 'tpope/vim-fugitive'
"NeoBundle 'Lokaltog/vim-easymotion'
NeoBundle 'rstacruz/sparkup', {'rtp': 'vim/'}
" vim-scripts repos
NeoBundle 'L9'
NeoBundle 'FuzzyFinder'
NeoBundle 'rails.vim'
" Non github repos
NeoBundle 'git://git.wincent.com/command-t.git'
" Non git repos
NeoBundle 'http://svn.macports.org/repository/macports/contrib/mpvim/'
NeoBundle 'https://bitbucket.org/ns9tks/vim-fuzzyfinder'

" ...

"追加
"
"

" solarized カラースキーム
  NeoBundle 'altercation/vim-colors-solarized'
" mustang カラースキーム
  NeoBundle 'croaker/mustang-vim'
" wombat カラースキーム
  NeoBundle 'jeffreyiacono/vim-colors-wombat'
" jellybeans カラースキーム
  NeoBundle 'nanotech/jellybeans.vim'
" lucius カラースキーム
  NeoBundle 'vim-scripts/Lucius'
" zenburn カラースキーム
  NeoBundle 'vim-scripts/Zenburn'
" mrkn256 カラースキーム
  NeoBundle 'mrkn/mrkn256.vim'
" railscasts カラースキーム
  NeoBundle 'jpo/vim-railscasts-theme'
" pyte カラースキーム
  NeoBundle 'therubymug/vim-pyte'
" molokai カラースキーム
  NeoBundle 'tomasr/molokai'
" hybrid カラースキーム
  NeoBundle 'w0ng/vim-hybrid'

" カラースキーム一覧表示に Unite.vim を使う
  NeoBundle 'Shougo/unite.vim'
  NeoBundle 'ujihisa/unite-colorscheme'

	":Unite colorscheme -auto-preview の実行でカラースキーム一覧表示

filetype plugin indent on     " Required!
"
" Brief help
" :NeoBundleList          - list configured bundles
" :NeoBundleInstall(!)    - install(update) bundles
" :NeoBundleClean(!)      - confirm(or auto-approve) removal of unused bundles

" Installation check.
NeoBundleCheck






" Common -------------------------------

filetype plugin indent on                " ファイル形式の判別。ファイル形式に沿ったプラグインの読み込み
"let g:hybrid_use_Xresources = 1          " hybridにできなかった。。。
colorscheme desert                       " カラースキームの設定
set background=dark                      " 背景色の傾向(カラースキームがそれに併せて色の明暗を変えてくれる)
syntax enable                            " 構文ハイライト機能On


" Indent -------------------------------

"set noexpandtab                         " タブをスペースに置き換える
set tabstop=2                           " Tab文字を画面上で何文字分に展開するか
set shiftwidth=2                        " cindentやautoindent時に挿入されるインデントの幅
set softtabstop=2                       " Tabキー押し下げ時の挿入される空白の量，0の場合はtabstopと同じ，BSにも影響する
set autoindent                          " 改行時に前の行のインデントを継続する
"set smartindent                         " 改行時に入力された行の末尾に合わせて次の行のインデントを増減する


" Assist imputting ---------------------

set backspace=2                         " バックスペースキーの動作を決定する
                                        " 2:indent,eol,start(=バックスペースで特殊記号も削除可能に)と同じ
set whichwrap=b,s,h,s,<,>,[,]	        	" カーソルを行頭、行末で止まらないようにする



" Search -------------------------------

set wrapscan		                        " 最後まで検索したら先頭へ戻る
set ignorecase	   		                 	" 大文字小文字無視
set smartcase		   	                  	" 大文字ではじめたら大文字小文字無視しない
set incsearch		   		                  " インクリメンタルサーチ
set hlsearch		   	                  	" 検索文字をハイライト


" display -------------------------------

set hlsearch                            " マッチ文字をハイライト表示
set number                              " 行番号表示
                                        " 行番号の色指定
highlight LineNr ctermfg=darkgrey       
                                        " ビジュアルモードの色指定
"highlight Visual guibg=red
set cursorline                          "カーソル行をハイライト
                                        "アンダーラインを引く(color terminal)
highlight cursorline cterm=none ctermfg=black ctermbg=white
                                        "アンダーラインを引く(gui)
"highlight CursorLine gui=NONE guifg=white guibg=black


