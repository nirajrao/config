" Evil elected leader
let mapleader = "\<Space>"

syntax on
filetype plugin indent on " required
set nocompatible " be iMproved, required
set number
set hlsearch
set noerrorbells
set expandtab
set clipboard+=unnamedplus

" Let us backspace on indents
" http://vim.wikia.com/wiki/Backspace_and_delete_problems#Backspace_key_won.27t_move_from_current_line
set backspace=indent,eol,start

" Display whitespace characters
set list
set listchars=tab:\ \ ,extends:›,precedes:‹,nbsp:·,trail:·

" Store file history
set undofile
set undodir=~/.vim/undo

" Highlight the matching character pair
set showmatch

" Highlight the current line
set cursorline

" Highlight while I type a search
set incsearch

set nowrap " No line wrapping

" Easier than reaching for escape
inoremap jk <Esc>

" Evil Bindings
" Map v-split
nmap <silent> <leader>w/ :vsplit<CR><c-w><Right>
" Map nerd-tree
map <silent> <leader>pt :NERDTreeFocus<CR>
" Move left
nmap <silent> <leader>w<Left> <c-w><Left>
" Move right
nmap <silent> <leader>w<Right> <c-w><Right>
" Save file
nmap <silent> <leader>fs :w!<CR>
" Close buffer
nmap <silent> <leader>wd :q!<CR>
" Git blame
nmap <silent> <leader>gb :Git blame<CR>
" Open init.vim quickly
nmap <silent> <leader>vm :e ~/.config/nvim/init.vim<CR>
" Source init.vim
nmap <silent> <leader>sv :source ~/.config/nvim/init.vim<CR>
" Window jumping
let i = 1
while i <= 9
    execute 'nnoremap <Leader>' . i . ' :' . i . 'wincmd w<CR>'
    let i = i + 1
endwhile


source ~/.config/nvim/modules/plugins.vim
source ~/.config/nvim/modules/dracula.vim
source ~/.config/nvim/modules/ale.vim
source ~/.config/nvim/modules/telescope.vim
source ~/.config/nvim/modules/lsp-config.vim
source ~/.config/nvim/modules/cmp-config.lua
source ~/.config/nvim/modules/lspsaga-config.lua
