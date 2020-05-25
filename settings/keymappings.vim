"Set Leader key to space
let g:mapleader = "\<Space>"

" Remap esc key to jk or kj
inoremap jk <Esc>
inoremap kj <Esc>

" Use alt + hjkl to resize splits
nnoremap <M-k>   :resize -2<CR> 
nnoremap <M-j>   :resize +2<CR>
nnoremap <M-l>   :vertical resize -2<CR>
nnoremap <M-h>   :vertical resize +2<CR>

" Improved window navigation
nnoremap <C-h> <C-w>h
nnoremap <C-j> <C-w>j
nnoremap <C-k> <C-w>k
nnoremap <C-l> <C-w>l

" Add new line below and above Cursor without leaving normal mode
nnoremap o o<Esc>
nnoremap O O<Esc>

" Open bash in horizontal split
nnoremap <leader>t  :sp term://bash<CR>

" Use <Esc> to exit exit terminal
:tnoremap <Esc> <C-\><C-n>

" Keymaps for tabs
nnoremap tn = :tabnew<space>
nnoremap tj = :tabnext<CR>
nnoremap tk = :tabprev<CR>
nnoremap tf = :tabfirst
nnoremap tl = :tablast
