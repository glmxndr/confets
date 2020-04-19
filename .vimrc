" ### Pathogen
execute pathogen#infect()
syntax on
filetype plugin indent on

let t_Co=256

" ### leaders
let maplocalleader=" "
let mapleader=','
let g:mapleader=','

" ### Text width
set textwidth=78
set backspace=indent,eol,start

" ### Motion
" # Bteween panes
nnoremap <M-Down>  <C-W><C-J>
nnoremap <M-Up>    <C-W><C-K>
nnoremap <M-Right> <C-W><C-L>
nnoremap <M-Left>  <C-W><C-H>

" ### Color scheme
let g:gruvbox_italic=1
colorscheme gruvbox
set background=dark
set number
set laststatus=2
set showcmd
set showtabline=1

" ### status line
"set laststatus=2
let g:airline_theme='luna'

" ### vimdiff
if &diff
    map [ [c
    map ] ]c
    map <leader>1 :diffget LOCAL<CR>
    map <leader>2 :diffget BASE<CR>
    map <leader>3 :diffget REMOTE<CR>
endif

" ### netrw
let g:netrw_banner = 0
let g:netrw_liststyle = 3
let g:netrw_browse_split = 4
let g:netrw_altv = 1
let g:netrw_winsize = 25


