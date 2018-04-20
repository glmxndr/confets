" ### Pathogen
execute pathogen#infect()
syntax on
filetype plugin indent on

let t_Co=256

" ### leaders
let maplocalleader=" "
let mapleader=','
let g:mapleader=','

" ### Color scheme
colorscheme papaya
set background=dark

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
augroup ProjectDrawer
  autocmd!
  autocmd VimEnter * :Vexplore
augroup END


