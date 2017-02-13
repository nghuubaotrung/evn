set nocompatible

if has('vim_starting')
  set runtimepath+=~/.vim/bundle/neobundle.vim/
  set t_Co=256
"  call neobundle#rc (expand('~/.vim/bundle/'))
endif

execute pathogen#infect()

"NeoBundle 'Shougo/neocomplcache'
"NeoBundle 'Shougo/neobundle.vim'
"NeoBundleLazy 'jelera/vim-javascript-syntax', {'autoload':{'filetypes':['javascript']}}
"NeoBundle 'Shougo/neosnippet'
"NeoBundle 'Shougo/neosnippet-snippets'
"let g:neosnippet#enable_snipmate_compatibility = 1
"let g:neosnippet#snippets_directory='~/.vim/snippets'
"
"
"NeoBundle 'vim-scripts/The-NERD-tree'
"NeoBundle 'itchyny/lightline.vim'
"NeoBundle 'https://github.com/hallettj/jslint.vim.git'
"NeoBundle 'nanotech/jellybeans.vim'
"NeoBundle 'tomasr/molokai'
"NeoBundle 'gosukiwi/vim-atom-dark'
"NeoBundle 'toyamarinyon/vim-swift'

call neobundle#begin(expand('~/.vim/bundle/'))
NeoBundle 'Shougo/neocomplcache'
NeoBundle 'Shougo/neobundle.vim'
NeoBundleLazy 'jelera/vim-javascript-syntax', {'autoload':{'filetypes':['javascript']}}
NeoBundle 'Shougo/neosnippet'
NeoBundle 'Shougo/neosnippet-snippets'
NeoBundle 'vim-scripts/The-NERD-tree'
NeoBundle 'itchyny/lightline.vim'
NeoBundle 'https://github.com/hallettj/jslint.vim.git'
NeoBundle 'nanotech/jellybeans.vim'
NeoBundle 'tomasr/molokai'
NeoBundle 'toyamarinyon/vim-swift'
NeoBundle 'Yggdroot/indentLine'
NeoBundle 'sjl/badwolf'
NeoBundle 'gosukiwi/vim-atom-dark'
call neobundle#end()

let g:neosnippet#enable_snipmate_compatibility = 1
let g:neosnippet#snippets_directory='~/.vim/snippets'
let g:indentLine_faster = 1
let g:indentLine_color_gui = '#009900'


" 引数なしでvimを開くとNERDTreeを起動
let file_name = expand('%')

if has('vim_starting') &&  file_name == ''
autocmd VimEnter * NERDTree ./
endif


"----------------------------------------
" カラースキーム
"----------------------------------------
"colorscheme jellybeans
"colorscheme molokai
colorscheme atom-dark-256
let g:molokai_original = 0
let g:rehash256 = 1
let g:instant_markdown_slow = 1
set background=dark
syntax on
"let g:solarized_termcolors=256
set background=dark
set shell=bash\ -i
"colorscheme solarized

"----------------------------------------
" Indent
"----------------------------------------
" 画面に表示されるタブ幅
set tabstop=4
" タブをスペース展開
set expandtab
" インデント時のスペース数
set shiftwidth=4
"
set smarttab
" 自動インデント
set autoindent

"----------------------------------------
" Search
"----------------------------------------
" 行番号の表示
set number
" 空白文字の表示
"set list
" カーソル行をハイライト
set cursorline
set wildmenu
" インクリメンタルサーチ
set incsearch
" 大文字小文字を区別しない
set ignorecase
" 大文字と小文字の両方が入力された場合のみ区別する
set smartcase
" 検索文字をハイライトする
set hlsearch
" 最終行まで検索したら先頭行に戻る
set wrapscan

"----------------------------------------
" Other
"----------------------------------------
" タブと行末半角スペースを強調する
:highlight TabSpace ctermbg=DarkBlue
:match TabSpace /\t\|\s\+$/

" ペースト時にオートインデント停止
set paste

" バックアップファイルを作成しない
set nobackup
set backspace=indent,eol,start
set autoindent
set nowrap
set ruler
filetype plugin on
filetype indent on

"--------------------------------------
"Status Line
"-------------------------------------
set laststatus=2
let g:lightline = {
	\'colorscheme':'wombat',
	\}

nmap <leader>md :%!/usr/local/bin/Markdown.pl --html4tags <cr>
nnoremap <S-s> <C-w>+
nnoremap <S-w> <C-w>-
nnoremap <S-d> <C-w>>
nnoremap <S-a> <C-w><

"--------------------------------------
"Delete spaces when saving
autocmd BufWritePre * :%s/\s\+$//ge
"--------------------------------------


"--------------------------------------
"HTML/ PSGI/ MARKDOWN/ VIEW
"--------------------------------------
augroup BEGIN
autocmd! BufNewFile,BufRead *.psgi setf perl
autocmd! BufNewFile,BufRead *.tt2 setf html
autocmd! BufNewFile,BufRead *.tt setf html
autocmd! BufNewFile,BufRead *.md setf markdown
autocmd BufNewFile,BufRead *.json setlocal syntax=javascript
au BufRead,BufNewFile jquery.*.js set ft=javascript syntax=jquery
augroup END

if has("autocmd")
    "ファイルタイプの検索を有効にする
    filetype plugin on
    "そのファイルタイプにあわせたインデントを利用する
    filetype indent on
    " これらのftではインデントを無効に
    "autocmd FileType php filetype indent off

    autocmd FileType apache     setlocal sw=4 sts=4 ts=4 et
    autocmd FileType aspvbs     setlocal sw=4 sts=4 ts=4 et
    autocmd FileType c          setlocal sw=4 sts=4 ts=4 et
    autocmd FileType cpp        setlocal sw=4 sts=4 ts=4 et
    autocmd FileType cs         setlocal sw=4 sts=4 ts=4 et
    autocmd FileType css        setlocal sw=2 sts=2 ts=2 et
    autocmd FileType diff       setlocal sw=4 sts=4 ts=4 et
    autocmd FileType eruby      setlocal sw=4 sts=4 ts=4 et
    autocmd FileType html       setlocal sw=2 sts=2 ts=2 et
    autocmd FileType java       setlocal sw=4 sts=4 ts=4 et
    autocmd FileType javascript setlocal sw=2 sts=2 ts=2 et
    autocmd FileType coppffee   setlocal sw=2 sts=2 ts=2 et
    " autocmd FileType perl       setlocal sw=4 sts=4 ts=4 et
    autocmd FileType perl       setlocal sw=2 sts=2 ts=2 et
    autocmd FileType php        setlocal sw=4 sts=4 ts=4 et
    autocmd FileType python     setlocal sw=4 sts=4 ts=4 et
    autocmd FileType ruby       setlocal sw=2 sts=2 ts=2 et
    autocmd FileType haml       setlocal sw=2 sts=2 ts=2 et
    autocmd FileType sh         setlocal sw=4 sts=4 ts=4 et
    autocmd FileType sql        setlocal sw=4 sts=4 ts=4 et
    autocmd FileType vb         setlocal sw=4 sts=4 ts=4 et
    autocmd FileType vim        setlocal sw=2 sts=2 ts=2 et
    autocmd FileType wsh        setlocal sw=4 sts=4 ts=4 et
    autocmd FileType xhtml      setlocal sw=4 sts=4 ts=4 et
    autocmd FileType xml        setlocal sw=4 sts=4 ts=4 et
    autocmd FileType yaml       setlocal sw=2 sts=2 ts=2 et
    autocmd FileType zsh        setlocal sw=4 sts=4 ts=4 et
    autocmd FileType scala      setlocal sw=2 sts=2 ts=2 et
    autocmd BufWritePre *.pl :%s/\s\+$//e
endif

