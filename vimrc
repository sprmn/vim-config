" Enable syntax
syntax on

" Enable filetype plugins
filetype plugin on
filetype indent on

augroup SyntaxSettings
    autocmd!
    autocmd BufNewFile,BufRead *.tsx set filetype=typescript.jsx
augroup END

" Use local vimrc if available
set exrc
set secure

" something with buffers
set hidden

" keep your bells and whistles to yourself
set noerrorbells

" Allow normal backspacing
set backspace=2

" Use mouse
set mouse=n

" Search
" case independent unless case is part of search
set ignorecase
set smartcase
" Search incrementally
set incsearch

source $HOME/.vim/init/undo.vimrc
source $HOME/.vim/init/indenting.vimrc
source $HOME/.vim/init/keyboard.vimrc
source $HOME/.vim/init/appearance.vimrc
source $HOME/.vim/init/gitgutter.vimrc
source $HOME/.vim/init/fzf.vimrc
source $HOME/.vim/init/nerdtree.vimrc
source $HOME/.vim/init/fugitive.vimrc
