""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" MAPPINGS
""""""""""""""""""""""""""""""""""""""""""""""""""""""""

" ===MISC===

" Set <leader> to comma
let mapleader = ","

" Remap "," because it's still useful
noremap \ ,

" switch to last-used file
nmap <leader><leader> <C-^>

" easily set filetype
nnoremap <leader>f :set filetype=

" Move around splits with <c-hjkl>
nnoremap <c-j> <c-w>j
nnoremap <c-k> <c-w>k
nnoremap <c-h> <c-w>h
nnoremap <c-l> <c-w>l

" Y yanks from current cursor position to end of line
nnoremap Y y$

" Alphabetize stuff
nmap <leader>s vii:!sort<CR>
xmap <leader>s :!sort<CR>

" ===LISTS===

" browse argument list easily
nnoremap ]a :next<CR>
nnoremap [a :prev<CR>
nnoremap ]A :last<CR>
nnoremap [A :first<CR>

" browse buffer list easily
nnoremap ]b :bnext<CR>
nnoremap [b :bprev<CR>
nnoremap ]B :blast<CR>
nnoremap [B :bfirst<CR>

" browse quickfix list easily
nnoremap ]c :cnext<CR>
nnoremap [c :cprev<CR>
nnoremap ]C :clast<CR>
nnoremap [C :cfirst<CR>

" browse location list easily
nnoremap ]l :lnext<CR>
nnoremap [l :lprev<CR>
nnoremap ]L :llast<CR>
nnoremap [L :lfirst<CR>
