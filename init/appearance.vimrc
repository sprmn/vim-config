" Theme
" User relative numbering, only in visual mode
:set number relativenumber
:augroup numbertoggle
:  autocmd!
:  autocmd BufEnter,FocusGained,InsertLeave * set relativenumber
:  autocmd BufLeave,FocusLost,InsertEnter   * set norelativenumber
:augroup END

" Use nicer diff
if has("patch-8.1.0360")
  set diffopt+=internal,algorithm:patience
endif
" Always show the signcolumn, otherwise it would shift the text each time
" diagnostics appear/become resolved.
set signcolumn=yes

" Show wildmenu on tab completion
set wildmenu

" Colorscheme
if has("termguicolors")
  set termguicolors
endif
let g:material_terminal_italics = 1
let g:material_theme_style = 'palenight'
colorscheme material

" show airline and not --INSERT--
let g:lightline = { 
      \ 'colorscheme': 'material_vim',
      \ 'active': {
      \   'left': [ [ 'mode', 'paste'],
      \             [ 'cocstatus', 'gitbranch', 'readonly', 'filename', 'modified' ] ]
      \ },
      \ 'component': {
      \   'filename': '%<%f'
      \ },
      \ 'component_function': {
      \   'gitbranch': 'FugitiveHead',
      \   'cocstatus': 'coc#status',
      \ }
      \ }
set laststatus=2
set noshowmode

" Show cursor line
set cursorline

" Show when lines are too long, but dont @me
set nowrap
set colorcolumn=80
