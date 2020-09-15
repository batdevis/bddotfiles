"set number
set encoding=utf-8
set hidden
set history=100
filetype indent on
set nowrap

" Use 2 characters space only indentation
set tabstop=2
set shiftwidth=2
set expandtab
set smartindent
set autoindent

autocmd BufWritePre * :%s/\s\+$//e
set hlsearch
set showmatch
set noswapfile
set title
set display+=lastline
set incsearch

" Automatically close brackets
" inoremap ( ()<Left>
" inoremap [ []<Left>
" inoremap { {}<Left>
" inoremap " ""<Left>
" inoremap ' ''<Left>

" Add :DiffOrig command to show differences before saving
if !exists(":DiffOrig")
  command DiffOrig vert new | set bt=nofile | r # | 0d_ | diffthis
  \ | wincmd p | diffthis
endif

"set mouse=a
let g:netrw_liststyle = 3
let g:netrw_banner = 0
let g:netrw_browse_split = 4
let g:netrw_winsize = 25
let g:netrw_altv = 1

let g:ale_linters = {
\  'typescript': ['prettier', 'tslint'],
\  '*': ['remove_trailing_lines', 'trim_whitespace'],
\  'javascript': ['prettier', 'eslint'],
\  'ruby': ['rubocop']
\}
let g:ale_linters_explicit = 1
let g:ale_set_balloons = 1
let g:ale_completion_enabled = 1
let g:airline#extensions#ale#enabled = 1
" Put these lines at the very end of your vimrc file.

" Load all plugins now.
" Plugins need to be added to runtimepath before helptags can be generated.
packloadall
" Load all of the helptags now, after plugins have been loaded.
" All messages and errors will be ignored.
silent! helptags ALL
