call plug#begin('~/.config/nvim/plugged')
Plug 'dracula/vim', { 'as': 'dracula' }
Plug 'bronson/vim-trailing-whitespace'
Plug 'ianks/vim-tsx'
Plug 'easymotion/vim-easymotion'
Plug 'airblade/vim-gitgutter'
Plug 'vim-airline/vim-airline'
Plug 'sheerun/vim-polyglot'
Plug 'tpope/vim-fugitive'
Plug 'preservim/nerdtree'
Plug 'antoinemadec/coc-fzf', {'branch': 'release'}
Plug 'junegunn/fzf', {'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'
Plug 'neoclide/coc-snippets'
Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'leafgarland/typescript-vim'
Plug 'dense-analysis/ale'
Plug 'editorconfig/editorconfig-vim'
Plug 'jremmen/vim-ripgrep'
Plug 'peitalin/vim-jsx-typescript'
Plug 'tpope/vim-commentary'
call plug#end()

packadd! dracula_pro

syntax enable

let g:dracula_colorterm = 0

colorscheme dracula_pro

let mapleader = "\<Space>"

filetype plugin indent on " required
syntax on
set nocompatible " be iMproved, required
set number
set hlsearch
set noerrorbells
set expandtab
set clipboard+=unnamedplus
" set filetypes as typescriptreact
autocmd BufNewFile,BufRead *.tsx,*.jsx set filetype=typescriptreact


" Ale Settings
let g:ale_fix_on_save = 1 " Automatically run all fixers on save
let g:ale_lint_on_text_changed = "normal" " Don't lint while still in insert mode
let g:ale_lint_delay = 350 " Wait longer before checking for syntax errors
let g:ale_linters = {
\    'typescript': ['eslint', 'prettier'],
\    'python': ['pylint'],
\}
let g:ale_fixers = {
    \'typescript': ['eslint', 'prettier'],
    \'python': ['black', 'isort'],
\}


" Declare the coc extensiosn to be installed and managed
let g:coc_global_extensions = [
      \"coc-go",
      \"coc-json",
      \"coc-prettier",
      \"coc-snippets",
      \"coc-tailwindcss",
      \"coc-tsserver",
      \"coc-yaml",
      \"coc-pyright",
      \]

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

" coc-snippets
let g:coc_snippet_next = '<c-j>'
let g:coc_snippet_prev = '<c-k>'

" Use <C-j> for both expand and jump (make expand higher priority.)
imap <C-j> <Plug>(coc-snippets-expand-jump)

" Disable some vim-go defaults and let coc.nvim do it
let g:go_def_mapping_enabled = 0

" Remap keys for gotos
nmap <silent> gd <Plug>(coc-definition)

" Declare some coc bindings
nmap <leader>n  <Plug>(coc-diagnostic-next)
nmap <leader>p  <Plug>(coc-diagnostic-prev)
nmap <leader>ca  <Plug>(coc-codeaction)
nmap <leader>f  <Plug>(coc-fix-current)

" Evil Bindings
" Map v-split
nmap <silent> <leader>w/ :vsplit<CR><c-w><Right>
" Map nerd-tree
map <silent> <leader>pt :NERDTreeFocus<CR>
" Map file finder
nmap <silent> <leader>pf :Files<CR>
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
" Open .vimrc quickly
nmap <silent> <leader>vm :e ~/.vimrc<CR>
" Source .vimrc
nmap <silent> <leader>sv :source ~/.vimrc<CR>
" Window jumping
let i = 1
while i <= 9
    execute 'nnoremap <Leader>' . i . ' :' . i . 'wincmd w<CR>'
    let i = i + 1
endwhile

map  <Leader>w <Plug>(easymotion-bd-w)
nmap <Leader>w <Plug>(easymotion-overwin-w)
