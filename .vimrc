let s:dein_dir = expand('~/.vim/dein')
let s:dein_repo_dir = s:dein_dir . '/repos/github.com/Shougo/dein.vim'
if &runtimepath !~# '/dein.vim'
  if !isdirectory(s:dein_repo_dir)
    execute '!git clone https://github.com/Shougo/dein.vim' s:dein_repo_dir
  endif
  execute 'set runtimepath^=' . fnamemodify(s:dein_repo_dir, ':p')
endif

if dein#load_state(s:dein_dir)
  call dein#begin(s:dein_dir)
    call dein#add('w0ng/vim-hybrid')
    call dein#add('tyru/open-browser.vim')
    call dein#add('vim-airline/vim-airline')
    call dein#add('ctrlpvim/ctrlp.vim')
    "call dein#add('Shougo/neocomplete.vim')
    call dein#add('pangloss/vim-javascript')
    "call dein#add('myhere/vim-nodejs-complete')
    call dein#add('bronson/vim-trailing-whitespace')
    call dein#add('rhysd/accelerated-jk')
  call dein#end()
  call dein#save_state()
endif

if dein#check_install()
  call dein#install()
endif

" base
set fenc=utf-8
set noswapfile
set autoread
set hidden
set confirm
set autoindent
set backspace=indent,eol,start
" view
set laststatus=2
set ruler
set list
set listchars=tab:>-,trail:-,nbsp:%,extends:>,precedes:<,eol:<
set smartindent
set showmatch
" search
set hlsearch
set incsearch
set ignorecase
set wrapscan
" tab
set expandtab

filetype plugin indent on
syntax on

set background=dark
colorscheme hybrid

autocmd BufWritePre * :FixWhitespace

nmap j <Plug>(accelerated_jk_gj)
nmap k <Plug>(accelerated_jk_gk)
nmap <Space><Tab> <C-w>w
nmap <Space>f :CtrlP<CR>
nmap <Space>b <Plug>(openbrowser-smart-search)
vmap <Space>b <Plug>(openbrowser-smart-search)
