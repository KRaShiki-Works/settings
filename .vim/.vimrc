
" Krashikiworks .vimrc minimal
" Copylight (c) 2017 Krashiki

" ----
" Start Settings
"   Activate when start Vim
" ----

"ファイルの文字コード
set fenc=utf-8

" コマンドの履歴保存数
" set history=1000

" ----
" General Settings
"   Activate alltime
" ----

" バックアップを作らない
set nobackup
" スワップファイルを作らない
set noswapfile
" 編集中のファイルを常に同期
set autoread
" バッファが編集中でもその他のファイルを開けるように
set hidden

" 入力中のコマンドをステータスに表示する
set showcmd
" コマンドの入力補完
set wildmode=list:longest

" ----
" View Settings
" ----
" ファイル名を表示
set title
" 行番号を表示
set number
" 不可視文字の可視化
set list
set listchars=  tab:»-,     " タブ
                trail:-,    " 
                eol:↲,      " 行末
                extends:»,  "
                precedes:«, "
                nbsp:%      "

" 対応する括弧を表示
set showmatch

" ステータスラインを表示
set laststatus=2

" ----
" Move Settings
" normal mode
" ----

" 文字のないところに移動
set virtualedit=block
" カーソルの回り込み
set whichwrap=b,s,[,],<,>

" 折り返し時に表示行単位での移動できるようにする
nnoremap j gj
nnoremap k gk

" ----
" Edit Settings
" insert mode
" ----
set ambiwidth=double

" スマートインデント
set smartindent

" Tab文字を半角スペース
set expandtab
" 行頭でのTab文字の表示幅
set tabstop=4
" 行頭以外のTab文字の表示幅（スペースいくつ分）
set shiftwidth=4

" バックスペースを、空白、行末、行頭でも使えるようにする
set backspace=indent,eol,start

" insert mode 中に f -> d 連打で normal mode に (Spacemacsと合わせる)
inoremap fd <Esc>

" ----
" Search Settings
" ----

" 検索文字列が小文字の場合は大文字小文字を区別なく検索する
set ignorecase
" 検索文字列に大文字が含まれている場合は区別して検索する
set smartcase
" 検索文字列入力時に順次対象文字列にヒットさせる
set incsearch
" 検索時に最後まで行ったら最初に戻る
set wrapscan
" 検索語をハイライト表示
set hlsearch
" ESC連打でハイライト解除
nmap <Esc><Esc> :nohlsearch<CR><Esc>
