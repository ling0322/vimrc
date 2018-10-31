call plug#begin('~/.vim/plugged')

Plug 'scrooloose/nerdtree'
Plug 'lifepillar/vim-mucomplete'
Plug 'mgee/lightline-bufferline'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'morhetz/gruvbox'
Plug 'ctrlpvim/ctrlp.vim'
Plug 'octol/vim-cpp-enhanced-highlight'
Plug 'qpkorr/vim-bufkill'

call plug#end()

map <C-n> :NERDTreeToggle<CR>
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif

map <C-K> :bnext<CR>
map <C-J> :bprev<CR>
map <C-c> :BD<cr>:bprev<CR>

colorscheme gruvbox
set bg=dark

set completeopt+=menuone
set completeopt+=noselect
set shortmess+=c
set belloff+=ctrlg
let g:mucomplete#enable_auto_at_startup = 1

set mouse=a
function! ToggleMouse()
    if &mouse == 'a'
        set mouse=
    else
        set mouse=a
    endif
endfunc
map <C-m> :call ToggleMouse()

set number
set cursorline
set hlsearch
set incsearch

let g:airline_theme='bubblegum'
let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#tabline#formatter = 'unique_tail'

let g:ctrlp_map = '<c-p>'
let g:ctrlp_cmd = 'CtrlP'
let g:ctrlp_working_path_mode = 'ra'
