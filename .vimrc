call plug#begin()
Plug 'tpope/vim-surround'
Plug 'marcopaganini/termschool-vim-theme'
Plug 'itchyny/lightline.vim'
" Plug 'OmniSharp/omnisharp-vim'
Plug 'wincent/command-t', {
  \   'do': 'cd ruby/command-t/ext/command-t && ruby extconf.rb && make'
  \ }
Plug 'tpope/vim-repeat'
Plug 'tpope/vim-commentary'
call plug#end()

let g:netrw_list_hide='.*\.pyc$,bin/$,obj/$,debug/$'
let g:netrw_preview = 1
let g:netrw_liststyle = 3
let g:netrw_banner = 0

set wildignore=*.dll,*.pyc,*.pdb,*/bin/*,*/obj/*,*.class,*/node_modules/*,*/env/*,*/packages/*

colorscheme termschool

let g:lightline = {
  \ 'colorscheme': 'termschool',
  \ }

let g:CommandTCancelMap=['<C-c>', '<C-[>']
let g:CommandTTraverseSCM='pwd'

setglobal complete -=i
setglobal complete -=t

syntax on
set hidden
set nowrap
set nu
set relativenumber
set nobackup
set noswapfile
set expandtab
set tabstop=4
set shiftwidth=4
set softtabstop=4
set visualbell
set encoding=utf-8
set splitright
set splitbelow
set t_ut=
set timeoutlen=1000
set ttimeoutlen=0
set noshowmode
set showcmd

set splitbelow
set incsearch
set scrolloff=5
set sidescrolloff=5
set laststatus=2
set autoindent

set wildmode=longest,list,full
set wildmenu

nnoremap <Space> <Nop>
let mapleader = "\<Space>"

nnoremap <leader>p :set invpaste<CR>

autocmd FileType * setlocal formatoptions=crql

augroup CursorLineOnlyInActiveWindow
  autocmd!
  autocmd VimEnter,WinEnter,BufWinEnter * setlocal cursorline
  autocmd WinLeave * setlocal nocursorline
augroup END
" au BufNewFile,BufRead *.yaml,*.yml so ~/.vim/yaml.vim

" let g:OmniSharp_server_path = '/mnt/c/Program Files/OmniSharp/OmniSharp.exe'
" let g:OmniSharp_translate_cygwin_wsl = 1
