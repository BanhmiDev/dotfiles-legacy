noremap qj <Esc>
inoremap qj <Esc>

syntax on
filetype plugin on

set tabstop=4
set list
set listchars=tab:\^\ ,trail:`
set number
set shiftwidth=4
set expandtab
set backspace=indent,eol,start
set hlsearch
set nobackup
autocmd FileType * set formatoptions-=ro
autocmd FileType * set autoindent
autocmd FileType * set indentexpr&
autocmd FileType * set nocindent
autocmd FileType * set nosmartindent
autocmd FileType * set nopreserveindent
autocmd FileType make set noexpandtab

autocmd BufNewFile,BufRead *.julius set filetype=javascript
autocmd BufNewFile,BufRead *.hamlet set filetype=html

set wildmenu
set wildmode=list:longest,full

set diffopt=filler,vertical

" vimgrep aliases
nnoremap <Space>fw :vimgrep /\<<C-r>=expand("<cword>")<CR>\>/j 

" Ctrl+W
map <Space>wh <C-w>h
map <Space>wj <C-w>j
map <Space>wk <C-w>k
map <Space>wl <C-w>l
map <Space>ww <C-w>w
map <Space>wH <C-w>H
map <Space>wJ <C-w>J
map <Space>wK <C-w>K
map <Space>wL <C-w>L
map <Space>wr <C-w>r
map <Space>wR <C-w>R

set background=dark
hi Normal     cterm=NONE ctermfg=White
hi Comment    cterm=NONE ctermfg=Cyan
hi Constant   cterm=NONE ctermfg=LightMagenta
hi Identifier cterm=NONE ctermfg=Cyan
hi Statement  cterm=NONE ctermfg=Yellow
hi PreProc    cterm=NONE ctermfg=Magenta
hi Type       cterm=NONE ctermfg=LightGreen
hi Special    cterm=NONE ctermfg=Green

syntax match TailSpaces /\s\+$/ containedin=ALL
hi TailSpaces cterm=NONE ctermbg=Red

" terminal clipboard
if !has('gui')
    " Vim(Mac)
    if has('macunix') || system('uname') =~? '^darwin'
        nnoremap <silent> <Space>y :w !pbcopy<CR><CR>
        vnoremap <silent> <Space>y :w !pbcopy<CR><CR>
        nnoremap <silent> <Space>p :r !pbpaste<CR>
        vnoremap <silent> <Space>p :r !pbpaste<CR>
    endif
" GVim(Mac & Win)
else
    noremap <Space>y "+y
    noremap <Space>p "+p
endif

call pathogen#incubate()
