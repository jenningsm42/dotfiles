execute pathogen#infect()

" Default tab behavior (4 spaces)
set tabstop=4
set softtabstop=4
set shiftwidth=4
set expandtab
set autoindent

" Disable mouse click moving cursor
set mouse-=a

syntax on
filetype plugin indent on

" Line and column numbers are useful
set number
set ruler

" Color scheme (solarzied)
syntax enable
set background=dark
colorscheme solarized

" Custom tab behavior on certain filetypes
autocmd FileType yaml setlocal ts=4 sts=4 sw=4 expandtab
autocmd FileType json setlocal ts=2 sts=2 sw=2 expandtab
autocmd BufReadPost *.schema setlocal ts=2 sts=2 sw=2 expandtab

autocmd FileType javascript setlocal ts=2 sts=2 sw=2 expandtab
autocmd FileType html setlocal ts=2 sts=2 sw=2 expandtab
autocmd FileType css setlocal ts=4 sts=4 sw=4 expandtab
autocmd BufReadPost *.less setlocal ts=4 sts=4 sw=4 expandtab

autocmd BufReadPost *.pp setlocal ts=4 sts=4 sw=4 expandtab

" Some filetypes are templates or special versions
autocmd BufReadPost *.schema set syntax=json
autocmd BufReadPost *.less set syntax=css

" Window movement
map <c-j> <c-w>j<c-w><Esc>
map <c-k> <c-w>k<c-w><Esc>
map <c-h> <c-w>h<c-w><Esc>
map <c-l> <c-w>l<c-w><Esc>

" Don't show any lines on minimized windows
set wmh=0
set wmw=0

" Remove trailing whitespace
nnoremap <Leader>rtw :%s/\s\+$//e<CR>
highlight ExtraWhitespace ctermbg=red guibg=red
match ExtraWhitespace /\s\+$/

" Fix backspace
set backspace=indent,eol,start

" Syntax checking w/ Syntastic
let g:syntastic_python_checkers=['flake8']
let g:syntastic_python_flake8_exe='python3 -m flake8'
let g:syntastic_always_populate_loc_list=1
noremap <F1> :SyntasticCheck<CR>
nnoremap ]l :lnext<CR><Esc>
nnoremap [l :lprev<CR><Esc>

" Set Python interpreter
let g:python3_host_prof='/home/vulpes/.pyenv/versions/3.7.0/envs/nvim-370/bin/python'

" Remove search highlighting with escape
nnoremap <silent> <Esc> :noh<CR><Esc>

" Run :GoImports on save
let g:go_fmt_command='goimports'

" Reload syntax highlighting
noremap <F12> <Esc>:syntax sync fromstart<CR>

" Set LaTeX parameters
let g:vimtex_view_method='mupdf'

" YouCompleteMe
let g:ycm_confirm_extra_conf=0
set completeopt-=preview
