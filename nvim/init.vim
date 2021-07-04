"All runtime files and packages in ~/.vim will be loaded by Neovim.
"Vim's runtime files are typically kept in a ~/.vim directory.
"Neovim uses the XDG base directory specification.
"http://vimcasts.org/episodes/meet-neovim/
set runtimepath^=~/.vim runtimepath+=~/.vim/after
let &packpath = &runtimepath
source ~/.vimrc
