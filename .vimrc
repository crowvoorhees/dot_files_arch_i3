set nocompatible

" ==================================================================
" Plugins & Addons
" ==================================================================

" NERDTree plugin
" Airline plugin
" Gruvbox theme

" ==================================================================
" Formatting
" ==================================================================

" enable terminal color 256
set t_Co=256

" enable line numbers
set nu

" airline: set theme
let g:airline_theme = 'gruvbox'

" airline: enable tabline
let g:airline#extensions#tabline#enabled = 1

" airline: enable statusline
set laststatus=2

" set vim syntax theme
colorscheme gruvbox

" enable syntax
syntax on

" search: find as you type
set incsearch

" search: case insensitive search 
set ignorecase

" search: case sensitive when uppercase present
set smartcase

" search: pattern highlighting
set hlsearch

" remove splash screen
set shortmess+=I

" =================================================================
" Key Mapping
" =================================================================

" F2: open NERDTree in home
:map <F2> :NERDTree ~/<CR>

