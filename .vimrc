syntax enable
set tabstop=4
set shiftwidth=4
set expandtab
set paste
set nonumber
filetype indent on
filetype plugin on

" Highlight
"highlight ColorColumn ctermbg=DarkGrey
"let &colorcolumn=join(range(81,999),",")

" Python highlight
let python_highlight_all=1

" Keys mappings
" toggle numbers
nnoremap <F3> :set nonumber!<CR>

" Split line based on spaces
nnoremap <F4> :.s/ /\r/g<CR>

" mark tabs
"highlight SpecialKey ctermbg=3*
"set list
"set listchars=tab:T>

" show spaces
highlight ExtraWhitespace ctermbg=red guibg=red
match ExtraWhitespace /\s\+$/
autocmd BufWinEnter * match ExtraWhitespace /\s\+$/
autocmd InsertEnter * match ExtraWhitespace /\s\+\%#\@<!$/
autocmd InsertLeave * match ExtraWhitespace /\s\+$/
autocmd BufWinLeave * call clearmatches()

hi GroupA ctermbg=blue ctermfg=blue guibg=blue
2match GroupA /\t/

" Persistent Undo

# You have to create undir manually for this to work !

set undofile                " Save undos after file closes
set undodir=$HOME/.vim/undo " where to save undo histories
set undolevels=1000         " How many undos
set undoreload=10000        " number of lines to save for undo
