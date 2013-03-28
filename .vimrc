"
" ~/.vimrc
"
" User configuration of Vim text editor.
"
" Oldrich Smehlik, <oldrich@smehlik.net>
"

" Enables easy installation of other plugins
execute pathogen#infect()
" No old-fashioned vi mode.
set nocompatible
" Enable syntax highlighting
syntax on
" Adjust syntax highlighting to dark background.
set background=dark
" Color scheme
colorscheme dante

" Backspace over \n
set backspace=2

" Indentation with 4 spaces.
set expandtab
set shiftwidth=4
set softtabstop=4

set autoindent
set smartindent

set textwidth=78

" Increase history size.
set history=100

" Show matching open/close brackets.
set showmatch

" Create files backup.
set backup

" If directory ~/.vim/backup exists, save backups into it.
set backupdir=~/.vim/backup

" Show question what to do instead of error
" when trying to quit and file is not saved.
set confirm

" Ignore case when searching.
set ignorecase
" Start search when searched string is being written.
set incsearch
" Highlight search results
set hlsearch

" Automatically reloads open file, if it is changed on the disk.
set autoread

" Enables mouse in vim in terminal
" (for scrolling, resizing windows, etc.),
" if terminal emulator supports it.
" On OS X it seems to work in iTerm, and not work in Terminal.
set mouse=a

" F3 toggles directory browser on/off
map <F3> :NERDTreeToggle<CR>
" F4 toggles tag browser on/off
map <F4> :TagbarToggle<CR>
" F5 jumps to the previous tab
map <F5> :tabp<CR>
imap <F5> :tabp<CR>
" F6 jumps to the next tab
map <F6> :tabn<CR>
imap <F6> :tabn<CR>
" F7 jumps to the previous error
map <F7> :cprevious<CR>
imap <F7> :cprevious<CR>
" F8 jumps to the next error
map <F8> :cnext<CR>
imap <F8> :cnext<CR>
" F9 runs make
map <F9> :make<CR>
imap <F9> :make<CR>
" F10 in normal mode reindents file
" with 4 spaces sized indentation
map <F10> gg=G
" CTRL+P runs fuzzy file opening
map <C-P> :CtrlP<CR>

" Highlight trailing whitespaces
highlight ExtraWhitespace ctermbg=red guibg=red
au ColorScheme * highlight ExtraWhitespace guibg=red
au BufEnter * match ExtraWhitespace /\s\+$/
au InsertEnter * match ExtraWhitespace /\s\+\%#\@<!$/
au InsertLeave * match ExtraWhiteSpace /\s\+$/

" Needed for working of plugins such as SnipMate
filetype plugin on

if has("gui_macvim")
    set guifont=Monaco:h13.00
endif

set completeopt=menu,menuone

" clang complete plugin configuration
let g:clang_use_library = 1
let g:clang_snippets = 1
let g:clang_snippets_engine = 'ultisnips'

" custom View menu
:30menu View.Show/Hide\ Directory\ Browser :NERDTreeToggle<CR>
:menu View.Show/Hide\ Tag\ Browser :TagbarToggle<CR>
:menu View.Show/Hide\ History\ Browser  :GundoToggle<CR>
:menu View.--Separator-- :
:menu View.Show/Hide\ Line\ Numbers :set number!<CR>
:menu View.Show/Hide\ Paste :set paste!<CR>
