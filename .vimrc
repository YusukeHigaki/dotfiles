syntax on "シンタックスハイライトを有効にする
set autoindent "オートインデントする
set number "行番号を表示する
set incsearch "インクリメンタルサーチ
set ignorecase "検索時に大文字小文字を無視する
set smartcase
set showmatch "対応する括弧のハイライト表示する
set showmode "モード表示する
set title "編集中のファイル名を表示する
set ruler "ルーラーの表示する
set wrapscan
set tabstop=4 "タブ文字数を4にする
set syntax=htmldjango
set hlsearch
set backspace=indent,eol,start
nnoremap<ESC><ESC> :nohlsearch<CR>
vnoremap < <gv
vnoremap > >gv

"---------------------------
" Start Neobundle Settings.
"---------------------------
" bundleで管理するディレクトリを指定
set runtimepath+=~/.vim/bundle/neobundle.vim/
 
" Required:
call neobundle#begin(expand('~/.vim/bundle/'))
 
" neobundle自体をneobundleで管理
NeoBundleFetch 'Shougo/neobundle.vim'
 
NeoBundle 'scrooloose/nerdtree'
NeoBundle 'scrooloose/nerdcommenter'
NeoBundle "ctrlpvim/ctrlp.vim"
NeoBundle 'scrooloose/syntastic'

call neobundle#end()
 
" Required:
filetype plugin indent on
 
" 未インストールのプラグインがある場合、インストールするかどうかを尋ねてくれるようにする設定
" 毎回聞かれると邪魔な場合もあるので、この設定は任意です。
NeoBundleCheck
 
"-------------------------
" End Neobundle Settings.
"-------------------------

" nerdtree settings.
nnoremap <silent><C-e> :NERDTreeToggle<CR>

" ctrip settings.
let g:ctrlp_regexp = 1

" nerdcommenter settings.
let g:NERDCreateDefaultMappings = 0
let NERDSpaceDelims = 1
nmap ,, <Plug>NERDCommenterToggle
vmap ,, <Plug>NERDCommenterToggle

" syntastic settings.
let g:syntastic_enable_signs=1
let g:syntastic_auto_loc_list=2
