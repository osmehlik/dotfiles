"
" ~/.vimrc
"
" User configuration of Vim text editor.
"
" Oldrich Smehlik, <oldrich@smehlik.net>
"

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

" F4 toggles directory browser on/off
map <F4> :NERDTreeToggle<CR>
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

if has("gui_running")
    set guifont=Envy\ Code\ B\ 10pt:h13.00
    "set guifont=PragmataPro:h14.00
    "set guifont=Andale\ Mono:h13.00
    "set guifont=Ubuntu\ Mono:h15.00
endif

" Highlight trailing whitespaces
highlight ExtraWhitespace ctermbg=red guibg=red
au ColorScheme * highlight ExtraWhitespace guibg=red
au BufEnter * match ExtraWhitespace /\s\+$/
au InsertEnter * match ExtraWhitespace /\s\+\%#\@<!$/
au InsertLeave * match ExtraWhiteSpace /\s\+$/

" Enables easy installation of other plugins
execute pathogen#infect()

