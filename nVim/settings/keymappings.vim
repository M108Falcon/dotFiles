"Set Leader key to space
let g:mapleader = "\<Space>"

" Remap esc key to jk or kj
inoremap jk <Esc>
inoremap kj <Esc>

" Use alt + hjkl to resize splits
nnoremap <M-k> :resize -2<CR> 
nnoremap <M-j> :resize +2<CR>
nnoremap <M-l> :vertical resize -2<CR>
nnoremap <M-h> :vertical resize +2<CR>

" Improved window navigation using ctrl + hjkl to move b/w splits
" h -> left
" j -> down
" k -> up
" l -> right
nnoremap <C-h> <C-w>h
nnoremap <C-j> <C-w>j
nnoremap <C-k> <C-w>k
nnoremap <C-l> <C-w>l

" Add new line below and above Cursor without leaving normal mode
nnoremap o o<Esc>
nnoremap O O<Esc>

" Open zsh in split (Replace the name of your preffered shell)
nnoremap <leader>t :10sp term://zsh<CR>
nnoremap <leader>vt :vs term://zsh<CR>

" Use <Esc> or <jk> to to enter normal mode terminal
:tnoremap <Esc> <C-\><C-n>
:tnoremap jk <C-\><C-n>

" Keymaps for tabs
" open file from file address under cursor in new tab
nnoremap ngf <C-w>gf

"open new tab with tn 
nnoremap tn :tabnew<space>

" use homerow keys to move b/w tabs
" j -> next tab
" k -> previous tab
" f -> first tab
" l -> last tab
nnoremap <silent> tj :tabnext<CR>
nnoremap <silent> tk :tabprev<CR>
nnoremap <silent> tf :tabfirst<CR>
nnoremap <silent> tl :tablast<CR>

" move tab index -1 or +1 using ctrl-alt-h or l
nnoremap <C-M-h> :-tabmove<CR>
nnoremap <C-M-l> :+tabmove<CR>

" quick tab shortcuts, use spacebar(leader key) + tabno to switch to it.
nnoremap <silent> <leader>1 1gt
nnoremap <silent> <leader>2 2gt
nnoremap <silent> <leader>3 3gt
nnoremap <silent> <leader>4 4gt
nnoremap <silent> <leader>5 5gt
nnoremap <silent> <leader>6 6gt
nnoremap <silent> <leader>7 7gt
nnoremap <silent> <leader>8 8gt
nnoremap <silent> <leader>9 9gt
nnoremap <silent> <leader>10 10gt

" Toggle Indent Line plugin using it
nnoremap <leader>it :IndentLinesToggle<CR>

" Remove highlight after search using leader key(space) + l
nnoremap <silent> <leader>l :nohlsearch<CR><C-L>
