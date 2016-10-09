" ========================================================================================
"   __     ___                                                                            
"   \ \   / (_)_ __ ___  _ __ ___                                                         
"    \ \ / /| | '_ ` _ \| '__/ __|                                                        
"     \ V / | | | | | | | | | (__                                                         
"  ____\_/  |_|_| |_| |_|_|  \___|                                                        
" |_____|                                                                                 
" ========================================================================================

set nocompatible

if has( 'gui_running' )
  source $VIMRUNTIME/vimrc_example.vim
  source $VIMRUNTIME/mswin.vim
  behave mswin

  set diffexpr=MyDiff()
  function! MyDiff()
    let opt = '-a --binary '
    if &diffopt =~ 'icase' | let opt = opt . '-i ' | endif
    if &diffopt =~ 'iwhite' | let opt = opt . '-b ' | endif
      let arg1 = v:fname_in
    if arg1 =~ ' ' | let arg1 = '"' . arg1 . '"' | endif
      let arg2 = v:fname_new
    if arg2 =~ ' ' | let arg2 = '"' . arg2 . '"' | endif
      let arg3 = v:fname_out
    if arg3 =~ ' ' | let arg3 = '"' . arg3 . '"' | endif
      let eq = ''
    if $VIMRUNTIME =~ ' '
      if &sh =~ '\<cmd'
        let cmd = '""' . $VIMRUNTIME . '\diff"'
        let eq = '"'
      else
        let cmd = substitute($VIMRUNTIME, ' ', '" ', '') . '\diff"'
      endif
    else
      let cmd = $VIMRUNTIME . '\diff'
    endif
    silent execute '!' . cmd . ' ' . opt . arg1 . ' ' . arg2 . ' > ' . arg3 . eq
  endfunction
endif

" ========================================================================================
" Plugins & Addons
" ========================================================================================

" NERD Tree plugin:   https://github.com/scrooloose/nerdtree
" Airline plugin:     https://github.com/vim-airline/vim-airline
" Hack font:          https://github.com/chrissimpkins/Hack
" Gruvbox theme:      https://github.com/morhetz/gruvbox
" Goyo plugin:        https://github.com/junegunn/goyo.vim
" Limelight plugin:   https://github.com/junegunn/limelight.vim
" WIMproved plugin:   https://github.com/kkoenig/wimproved.vim

" ========================================================================================
" General Settings
" ========================================================================================

syntax on                                       " enable sytnax
set number                                      " enable line numbers
set cursorline                                  " highlight current line
set virtualedit=onemore                         " give one virtual space at end of line
set laststatus=2                                " always show statusline
set backspace=indent,eol,start                  " allow backspace to go to previous line
set hidden                                      " hide buffers instead of closing them
filetype plugin indent on                       " automatically detect file types

" Text Formatting: -----------------------------------------------------------------------

set listchars=eol:¬,trail:·,nbsp:·,tab:>.       " format to display hidden whitespace
set list                                        " display hidden whitespace
set textwidth=0                                 " disable default text width
set nowrap                                      " disable automatic line wrap
set autoindent                                  " automatically indent new lines
set smartindent                                 " enable smart indenting
set softtabstop=2                               " set soft tab to 2 spaces
set shiftwidth=2                                " set shift width to 2 spaces
set tabstop=4                                   " set tab to 2 spaces
set expandtab                                   " expand tabs to spaces
set nosmarttab                                  " disable smart tabs
set formatoptions+=n                            " support for numbered/bullet lists

" Search: --------------------------------------------------------------------------------

let @/ = ""                                     " clear last search pattern on startup
set incsearch                                   " find as you type
set ignorecase                                  " case insensitive search
set smartcase                                   " case sensitive when uppercase present
set hlsearch                                    " pattern highlighting

" Backups: -------------------------------------------------------------------------------

set nobackup                                   " do not keep backups after close
set nowritebackup                              " do not backup while working
set noswapfile                                 " do not keep swp files
set backupdir=$HOME/.vim/backup                " store backups under ~/.vim/backup

" ========================================================================================
" User Interface Settings
" ========================================================================================

colorscheme gruvbox                             " set syntax theme
set background=dark                             " set background tone
set shortmess+=I                                " remove splash screen
set showmatch                                   " show matching brackets/parenthesis
set mousehide                                   " hide mouse cursor while typing
set splitright                                  " split window to the right of the current
set splitbelow                                  " split window to the bottom of the current

if has( 'gui_running' )
  set visualbell t_vb=                          " disable beep and flash
  set mouse=a                                   " automatically enable mouse usage

" GUI: -----------------------------------------------------------------------------------

  set guifont=Hack:h10                          " set font type
  set guioptions-=T                             " remove toolbar
  set guioptions-=r                             " remove right scrollbar
  set guioptions-=L                             " remove left scrollbar
  set guioptions-=t                             " remove tearoff menu items
else
  set noerrorbells visualbell t_vb=             " disable beep and flash
  set t_Co=256                                  " enable color 256
endif

" ========================================================================================
" Plugin Settings
" ========================================================================================

" NERDTree: ------------------------------------------------------------------------------

"let NERDTreeQuitOnOpen = 1                     " close pane when file is opened
let NERDTreeMouseMode = 2                       " enable mouse mode
let NERDTreeShowHidden = 1                      " show hidden files
let NERDTreeKeepTreeInNewTab = 1                " keep tree in new tab

" Airline: -------------------------------------------------------------------------------

let g:airline_theme='gruvbox'                   " set theme
let g:airline#extenstions#tabline#enabled = 1   " enable tab line

if has('gui_running')
  let g:airline_left_sep='›'                    " customize left separator
  let g:airline_right_sep='‹'                   " customize right separator
endif

" ========================================================================================
" Autocommands
" ========================================================================================
 
" Limelight: configure limelight to run with Goyo
autocmd! User GoyoEnter Limelight
autocmd! User GoyoLeave Limelight!

" ========================================================================================
" Functions
" ========================================================================================

" gVim fullscreen toggle (defaults to off)
let g:fullScreened = 0
function! ToggleFullScreen()
  if g:fullScreened == 0
    let g:fullScreened = 1
    simalt ~x
  else
    let g:fullScreened = 0
    simalt ~r
  endif
endfunction

" gVim menu bar toggle (defaults to off)
set guioptions-=m
let g:MenuEnabled = 0
function! ToggleGuiMenu()
  if g:MenuEnabled == 0
    set guioptions+=m
    let g:MenuEnabled = 1
  else
    set guioptions-=m
    let g:MenuEnabled = 0
  endif
endfunction

" ========================================================================================
" Key Mapping
" ========================================================================================

" Special Keys:---------------------------------------------------------------------------

" F2: toggle NERDTree starting in $HOME (requires NERDTree plugin)
noremap <F2> :NERDTreeToggle $HOME\<return>

" F3: toggle Goyo view (requires Goyo plugin)
noremap <F3> :Goyo<return>

" F4: toggle text wrap
noremap <F4> :set wrap!<return>

" F8: refresh VIMRC 
noremap <F8> :source $MYVIMRC<return>

" F9: open VIMRC in vertical split panel
noremap <F9> :vsplit $MYVIMRC<return>

if has( 'gui_running' )
  " F10: toggle gui menu bar
  noremap <F10> :call ToggleGuiMenu()<return>

  " F11: toggle full screen mode
  noremap <F11> :call ToggleFullScreen()<return>

  " F12: toggle borderless full screen mode
  noremap <F12> :WToggleFullscreen<return>

  " ESC: clear search highlight
  nnoremap <esc> :noh<return><esc>
endif

" Movement: ------------------------------------------------------------------------------

" common keys 
noremap <PageUp> <c-b>
noremap <PageDown> <c-f>
noremap <Home> gg
noremap <End> G

" use ctrl-[hjkl] to select the active split
nnoremap <silent> <c-k> :wincmd k<return>
nnoremap <silent> <c-j> :wincmd j<return>
nnoremap <silent> <c-h> :wincmd h<return>
nnoremap <silent> <c-l> :wincmd l<return>

" Leader Mapping: ------------------------------------------------------------------------

" set mapping leader
let mapleader = "-"

" wrap current word in double quotes
noremap <leader>" viw<esc>a"<esc>hbi"<esc>lel
