syntax on
colorscheme base16-ocean
let base16colorspace=256
set background=dark

set shell=/bin/bash

" NeoBundle
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
if 0 | endif

if has('vim_starting')
  if &compatible
    set nocompatible               " Be iMproved
  endif

  set runtimepath+=~/.vim/bundle/neobundle.vim/
endif

call neobundle#begin(expand('~/.vim/bundle/'))

NeoBundleFetch 'Shougo/neobundle.vim'
NeoBundle 'The-NERD-tree'
NeoBundle 'airblade/vim-gitgutter'
NeoBundle 'junegunn/vim-easy-align'
" NeoBundle 'vim-airline/vim-airline'
" NeoBundle 'vim-airline/vim-airline-themes'
NeoBundle 'w0rp/ale'
NeoBundle 'ctrlpvim/ctrlp.vim'
NeoBundle 'Vimjas/vim-python-pep8-indent'
NeoBundle 'Shougo/vimproc.vim', {
\ 'build' : {
\     'windows' : 'tools\\update-dll-mingw',
\     'cygwin' : 'make -f make_cygwin.mak',
\     'mac' : 'make',
\     'linux' : 'make',
\     'unix' : 'gmake',
\    },
\ }

call neobundle#end()

filetype plugin indent on

NeoBundleCheck

" Key Mappings
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
map <F3> :NERDTreeToggle<CR>

map <C-c> :!clear<CR>

nnoremap n nzz
nnoremap N Nzz
nnoremap * *zz
nnoremap # #zz
nnoremap g* g*zz
nnoremap g# g#zz
nnoremap d "_d
nnoremap ,p :put " <CR>
noremap  k gk
inoremap <M-k> <C-O>gk
noremap  j gj
inoremap <M-j> <C-O>gj
nnoremap <C-J> <C-W><C-J>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-L> <C-W><C-L>
nnoremap <C-H> <C-W><C-H>
nnoremap tn :tabnew<CR>
nnoremap <S-H> :tabprevious<CR>
nnoremap <S-L> :tabnext<CR>
vnoremap <C-r> "hy:%s/<C-r>h//g<left><left>
nnoremap <F5> :let _s=@/<Bar>:%s/\s\+$//e<Bar>:let @/=_s<Bar><CR>

let mapleader=","

" File Settings
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""" 
set nobackup 
setlocal noswapfile 
set confirm 
filetype plugin on 
filetype indent on 
set ffs=unix,dos,mac " favor unix ff, which behaves good under bot Winz & Linux  
set clipboard=unnamed,autoselect,exclude:cons\|linux "set clipboard 
set autochdir

" Display Settings
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""  
set hidden
:set switchbuf=usetab,newtab
au BufRead,BufNewFile *.g set syntax=antlr3
set title
set t_Co=256 
set encoding=utf-8
set fillchars+=stl:\ ,stlnc:\
set term=xterm-256color
set termencoding=utf-8
set iskeyword+=_,$,@,%,#,- 
set linespace=0  
set nu  
"set cursorline
set wildmenu  
set laststatus=2  
set ruler
set rulerformat=%55(%{strftime('%a\ %b\ %e\ %I:%M\ %p')}\ %5l,%-6(%c%V%)\ %P%)
set showcmd  
set cmdheight=1  
set whichwrap+=<,>,h,l  
set mouse=a  
set selection=exclusive  
set selectmode=mouse,key  
set shortmess=atI  
set report=0  
set noerrorbells  
set fillchars=vert:\ ,stl:\ ,stlnc:\  
" highlight line with over 80 chars
" highlight OverLength ctermbg=red ctermfg=white guibg=#592929
" match OverLength /\%81v.\+/

" Searching and Matching
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""  
set showmatch  
set matchtime=5  
set ignorecase  
set hlsearch  
set incsearch  
set listchars=tab:\|\ ,trail:.,extends:>,precedes:<,eol:$  
set scrolloff=50
set novisualbell  
" ctrl+c to toggle highlight.
let hlstate=0
nnoremap <c-c> :if (hlstate%2 == 0) \| nohlsearch \| else \| set hlsearch \| endif \| let hlstate=hlstate+1<cr>
  
" Formatting
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""  
set formatoptions=tcrqn  
set autoindent  
set smartindent  
set tabstop=4  
set softtabstop=4  
set shiftwidth=4  
set expandtab
"set wrap  
"set textwidth=80
set smarttab  
set backspace=indent,eol,start
 
" Others
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""  
set foldenable  
set foldmethod=manual  
nnoremap <space> @=((foldclosed(line('.')) < 0) ? 'zc' : 'zo')<CR>  
let g:tagbar_left= 0
let g:tagbar_ctags_bin='/usr/local/bin/ctags'
set timeoutlen=1000 ttimeoutlen=0
set splitbelow
set splitright

" remember last position
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""  
if has("autocmd")
  au BufReadPost * if line("'\"") > 1 && line("'\"") <= line("$") | exe "normal! g'\"" | endif
endif

" NERDTree
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" autocmd VimEnter * NERDTree
" autocmd VimEnter * wincmd p

function! NERDTreeQuit()
  redir => buffersoutput
  silent buffers
  redir END
"                     1BufNo  2Mods.     3File           4LineNo
  let pattern = '^\s*\(\d\+\)\(.....\) "\(.*\)"\s\+line \(\d\+\)$'
  let windowfound = 0

  for bline in split(buffersoutput, "\n")
    let m = matchlist(bline, pattern)

    if (len(m) > 0)
      if (m[2] =~ '..a..')
        let windowfound = 1
      endif
    endif
  endfor

  if (!windowfound)
    quitall
  endif
endfunction
autocmd WinEnter * call NERDTreeQuit()

" " Airline
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""  
" let g:airline_left_sep=''
" let g:airline_right_sep=''
" let g:airline_mode_map = {
"       \ '__' : '-',
"       \ 'n'  : 'N',
"       \ 'i'  : 'I',
"       \ 'R'  : 'R',
"       \ 'c'  : 'C',
"       \ 'v'  : 'V',
"       \ 'V'  : 'V',
"       \ '' : 'V',
"       \ 's'  : 'S',
"       \ 'S'  : 'S',
"       \ '' : 'S',
"       \ }
" if !exists('g:airline_symbols')
"     let g:airline_symbols = {}
"   endif
" let g:airline_symbols.branch = '|'
" let g:airline_section_warning=''
" let g:airline_section_x=''
" "let g:airline_extensions = ['branch']
" let g:airline_theme='lucius'
" let g:airline#extensions#ale#enabled = 1

" ale
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""  
let g:ale_linters = {
\   'python': ['flake8'],
\}
let g:ale_fixers = {
\   'python': ['black'],
\}
nmap <silent> <C-k> <Plug>(ale_previous_wrap)
nmap <silent> <C-j> <Plug>(ale_next_wrap)
