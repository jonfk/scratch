"forget being compatible with good ol' vi
set nocompatible

" Get that filetype stuff happening
filetype on
filetype plugin on
filetype indent on

" Turn on that syntax highlighting
syntax on

" Take care of indentation
set autoindent
"set si

" searching
" Incremental search
set incsearch
" highlight search
set hlsearch

" Why is this not a default
set hidden

" Don't update the display while executing macros
set lazyredraw

" At least let yourself know what mode you're in
set showmode

" Show Line numbers on the left side
set number
set numberwidth=1

" Enable enhanced command-line completion. Presumes you have compiled
" with +wildmenu.  See :help 'wildmenu'
set wildmenu

" Let's make it easy to edit this file (mnemonic for the key sequence is
" 'e'dit 'v'imrc)
nmap <silent> ,ev :e $MYVIMRC<cr>

" And to source this file as well (mnemonic for the key sequence is
" 's'ource 'v'imrc)
nmap <silent> ,sv :so $MYVIMRC<cr>

" Manual mapping for Command-T
nmap <silent> ,t :CommandT<cr>

""Java anonymous classes. Sometimes, you have to use them.
set cinoptions+=j1
let java_mark_braces_in_parens_as_errors=1
let java_highlight_all=1
let java_highlight_debug=1
let java_ignore_javadoc=1
let java_highlight_java_lang_ids=1
let java_highlight_functions="style"
let java_minlines = 150

" This is for whitespace when using tab
set expandtab
set shiftwidth=4
set softtabstop=4

" Set the status line the way I like it
set stl=%f\ %m\ %r\ Line:\ %l/%L[%p%%]\ Col:\ %c\ Buf:\ #%n\ [%b][0x%B]
"
" tell Vim to always put a status line in, even if there is only one
" window
 set laststatus=2

"To use Pathogen plugin (used to install Solarized)
call pathogen#infect()
call pathogen#helptags()

"To use Solarized-colors
set background=light
colorscheme solarized

if has('gui_running')
 set background=light
else
 set background=dark
endif
