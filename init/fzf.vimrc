" Bind to ctrp and exclude files that are not in git
map <C-p> :GFiles --exclude-standard --others --cached<CR>
map <C-g> :Rg<CR>

" Update runtimepath with fzf
set rtp+=/usr/local/opt/fzf
