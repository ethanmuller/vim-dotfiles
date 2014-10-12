" CtrlP
let g:ctrlp_open_multiple_files = 'i'

" mneumonic: open MRU
nmap <Leader>m :CtrlPMRUFiles<CR>


" Gist.vim
if has('macunix') || has('mac')
  let g:gist_clip_command = 'pbcopy'
endif
let g:gist_post_private = 1
let g:gist_get_multiplefile = 1
let g:gist_clip_command = 'pbcopy'


" airline
let g:airline_powerline_fonts=1
let g:airline_left_sep=''
let g:airline_right_sep=''
let g:airline_enable_branch=1
let g:airline_branch_empty_message=''
let g:airline_theme='solarized'
set laststatus=2

" Syntastic
let g:syntastic_always_populate_loc_list=1

" The Silver Searcher
if executable('ag')
  " Use ag over grep
  set grepprg=ag\ --nogroup\ --nocolor

  " Use ag in CtrlP for listing files. Lightning fast and respects .gitignore
  let g:ctrlp_user_command = 'ag %s -l --nocolor -g ""'

  " ag is fast enough that CtrlP doesn't need to cache
  let g:ctrlp_use_caching = 0
endif
" set up Ag command for ag search
command -nargs=+ -complete=file -bar Ag silent! grep! <args>|cwindow|redraw!

"NERDCommenter
let NERDSpaceDelims = 1

" portkey
let g:portkey_autostart = 1

augroup markdown
    au!
    au BufNewFile,BufRead *.md,*.markdown setlocal filetype=ghmarkdown
augroup END

"NERDTree
let NERDTreeShowLineNumbers=1

"Goyo
function! g:Goyo_enter()
  set background=light
  color summerfruit256

  set wrap
  nmap j gj
  nmap k gk
endfunction

function! g:Goyo_exit()
  set background=dark
  color solarized
endfunction

let g:goyo_callbacks = [function('g:Goyo_enter'), function('g:Goyo_exit')]
nnoremap <leader>w :Goyo<CR>

" switch.vim
let g:switch_custom_definitions =
  \ [
  \   ['foo', 'bar', 'baz'],
  \   ['light', 'dark'],
  \   ['bottom', 'top'],
  \   ['left', 'right'],
  \   ['one', 'two', 'three'],
  \   ['red', 'green'],
  \   ['width', 'height'],
  \   ['red', 'green', 'blue'],
  \   ['white', 'gray', 'black']
  \ ]

nnoremap <leader>t :Switch<CR>

" GIFL
let g:LuckyOutputFormat='markdown'

" Fugitive
nmap <Leader>gc :Gcommit -v<CR>
nmap <Leader>gw :Gwrite<CR>
nmap <Leader>gs :Gstatus<CR>
nmap <Leader>gp :Git push<CR>
nmap <Leader>gu :Git pull<CR>
nmap <Leader>gd :Gdiff<CR>
nmap <leader>gl :Glog<cr>
nmap <leader>gL :Git log<cr>
nmap <leader>gb :Gblame<cr>

" Ember.vim
nnoremap <leader>ec :Econtroller<space>
nnoremap <leader>ea :Easset<space>
nnoremap <leader>ert :Eroute<space>
nnoremap <leader>err :Econfig router<CR>
nnoremap <leader>et :Etemplate<space>
nnoremap <leader>em :Emodel<space>

