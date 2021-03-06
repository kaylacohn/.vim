
" GENERAL

set nocompatible
execute pathogen#infect()
set tabstop=2
set shiftwidth=2
set expandtab
set smarttab
set autoindent
set smartindent
set nu
filetype plugin on
filetype plugin indent on
let mapleader = ","
set encoding=utf-8
set scrolloff=3
set autoindent
set showmode
set showcmd
set hidden
set wildmenu
set wildmode=list:longest
set visualbell
set cursorline
set ttyfast
set backspace=indent,eol,start
set laststatus=2
set number
set nowrap
set textwidth=79
set formatoptions=qrn1
set pastetoggle=<leader>p
set cmdwinheight=20

function! ToggleVerbose()
    if !&verbose
        set verbosefile=~/.log/vim/verbose.log
        set verbose=15
    else
        set verbose=0
        set verbosefile=
    endif
endfunction

" vnoremap . :norm.<CR>

" Steve Losh Style Mappings
" nnoremap <space> za
nnoremap <leader>ev :vsplit $MYVIMRC<cr>
nnoremap <leader>sv :source $MYVIMRC<cr>
nnoremap H ^
nnoremap L $
vnoremap jk <esc>
inoremap jk <esc>
inoremap <esc> <nop>
" noremap <Up> <NOP>
" noremap <Down> <NOP>
" noremap <Left> <NOP>
" noremap <Right> <NOP>
nnoremap <leader>f va(

nnoremap z i<space><esc>

nnoremap <leader>n <Plug>(sexp_insert_at_list_tail)

:set statusline=%f         
:set statusline+=%=       
:set statusline+=%l      
:set statusline+=/     
:set statusline+=%L   

au BufRead,BufNewFile *.edn set syntax=clojure
au BufRead,BufNewFile Dockerfile set filetype=conf

set noswapfile
set undodir=/tmp/.vimundo

" SYNTAX

syntax enable
syntax on
let base16colorspace=256  
set background=dark
colorscheme base16-default

" KEY MAPPING

nnoremap ; :
nnoremap <leader>W :%s/\s\+$//<cr>:let @/=''<CR>
nnoremap <leader>ft Vatzf
nnoremap <leader>S ?{<CR>jV/^\s*\}?$<CR>k:sort<CR>:noh<CR>
nnoremap <leader>w <C-w>v<C-w><leader>t
nnoremap <C-h> <C-w>h
nnoremap <C-j> <C-w>j
nnoremap <C-k> <C-w>k
nnoremap <C-l> <C-w>l
" map <C-n> :NERDTreeToggle<CR>
noremap % v% 
noremap <leader>r :Require<CR>
map - :Explore<CR>

" FONT
set guifont=Monaco:h12

" EMMET VIM
let g:user_emmet_expandabbr_key = '<c-e>'
let g:use_emmet_complete_tag = 1
let g:user_emmet_install_global = 0
autocmd FileType html,php,scss,css EmmetInstall

" because fish isn't bash compatible
if &shell =~# 'fish$'
  set shell=sh
endif

set wildignore+=*/tmp/*,*/out/*,*/target/*,*.so,*.swp,*.zip
let g:ctrlp_working_path_mode = 'cra'
let g:ctrlp_custom_ignore = '\v[\/]\.(git|hg|svn|out)$'


" let g:sexp_mappings = {}
" nmap <buffer> B <Plug>(sexp_move_to_prev_element_head)

" autocmd FileType clojure
"   autocmd!
"   nmap <buffer> M <Plug>(sexp_insert_at_list_head)
" augroup END

augroup filetype_clojure
  autocmd!
  " autocmd FileType clojure setlocal foldmethod=indent
  " autocmd FileType clojure nnoremap fa zM<cr>
  " autocmd FileType clojure nnoremap ee zR<cr>
  map <leader>M ((<Plug>(sexp_insert_at_list_tail)<cr>
  map <leader>n $<cr>i
  " nmap )) dd<cr>
  " nnoremap M dd<cr>
augroup END

" let g:sexp_mappings = {
"  \ 'sexp_inner_list': 'M',
"  \ 'sexp_move_to_prev_bracket':      '<Leader>m',
"  \ }


