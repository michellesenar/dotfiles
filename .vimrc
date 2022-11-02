colo murphy
" remove trailing whitespace
autocmd BufWritePre * %s/\s\+$//e

" Indent automatically depending on filetype
filetype indent on
set autoindent
set paste

" Because backspace on a Mac is the delete key
set backspace=2

" Turn on line numbering. Turn it off with "set nonu
set number

" Set syntax on
syntax on

" Case insensitive search
set ic

" Higlhight search
set hls

" Wrap text instead of being on one line
set lbr

" NERDTree abbreviations
command! NT NERDTree
command! NC NERDTreeClose
nnoremap tr <c-w>t

" Cycle through windows
nnoremap ro <c-w>w

" Have syntastic and flake8 turned on at startup
" let g:syntastic_check_on_open = 1
" let g:syntastic_python_checkers = ['flake8']

" set statusline+=%#warningmsg#
" set statusline+=%{SyntasticStatuslineFlag()}
" set statusline+=%*

" let g:syntastic_always_populate_loc_list = 1
" let g:syntastic_auto_loc_list = 1
" let g:syntastic_check_on_open = 1
" let g:syntastic_check_on_wq = 0


" PEP8
au BufNewFile,BufRead *.py
    \ set tabstop=4 |
    \ set softtabstop=4 |
    \ set shiftwidth=4 |
    \ set textwidth=79 |
    \ set expandtab |
    \ set autoindent |
    \ set fileformat=unix


" UTF support
set encoding=utf-8

" set clipboard=unnamedplus

" SuperTab stuff
let g:SuperTabDefaultCompletionType = "context"


" set textwidth=80
" set colorcolumn=+1
" highlight ColorColumn ctermbg=7 guibg=slateblue1


" Make sure bundles installed upon startup
" execute pathogen#infect()
