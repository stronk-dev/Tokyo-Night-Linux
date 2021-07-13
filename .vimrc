" Line numbers which change relative/absolute in insert/home mode
:set number relativenumber
:augroup numbertoggle
:  autocmd!
:  autocmd BufEnter,FocusGained,InsertLeave * set relativenumber
:  autocmd BufLeave,FocusLost,InsertEnter   * set norelativenumber
:augroup END

" Load syntax and indentation plugins
if has('filetype')
  filetype indent plugin on
endif
if has('syntax')
  syntax on
endif
set autoindent

" Display everything as utf-8 in vim
set encoding=utf-8

" Better command-line completion & search subdirectories as well
set path+=**
set wildmenu

" Show partial commands in the last line of the screen
set showcmd

" Highlight search results
set hlsearch

" Use case insensitive search, except when using capital letters
set ignorecase
set smartcase

" show incremental search results as you type
set incsearch

" allow for unsaved buffers
set hidden

" Allow backspacing over autoindent, line breaks and start of insert action
set backspace=indent,eol,start

" When opening a new line and no filetype-specific indenting is enabled, keep
" the same indent as the line you're currently on
set nostartofline

" Display cursor position in bottom bar
set ruler

" Always display the status line, even if only one window is displayed
set laststatus=2

" Instead of failing a command because of unsaved changes, instead raise a
" dialogue asking if you wish to save changed files.
set confirm

" Use visual bell instead of beeping when doing something wrong
set visualbell

" And reset the terminal code for the visual bell. If visualbell is set, and
" this line is also included, vim will neither flash nor beep. If visualbell
" is unset, this does nothing.
set t_vb=

" Enable use of the mouse for all modes
if has('mouse')
  set mouse=a
endif

" Set the command window height to 2 lines, to avoid many cases of having to
" "press <Enter> to continue"
set cmdheight=2

" Quickly time out on keycodes, but never time out on mappings
set notimeout ttimeout ttimeoutlen=200

" Use <F11> to toggle between 'paste' and 'nopaste'
set pastetoggle=<F11>

" Indentation settings for using 2 spaces instead of tabs.
set shiftwidth=2
set softtabstop=2
set expandtab

" Map Y to act like D and C, i.e. to yank until EOL, rather than act as yy,
map Y y$

" (folder browser) netrw settings
let g:netrw_banner=0 "no top banner
let g:netrw_browse_split=4 "open in prior window
let g:netrw_altv=1 "open splits to the right
let g:netrw_liststyle=3 "tree view > list view
let g:netrw_list_hide=netrw_gitignore#Hide()
let g:netrw_list_hide.=',\(^\|\s\s\)\zs\.\S\+'

" press jj to exit insert mode
inoremap jj <ESC>






