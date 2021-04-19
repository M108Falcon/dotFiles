" Open Nerd-tree with keybind
map <leader>n :NERDTreeToggle<CR>

" Open Nerd-Tree when no file/directory is specified in vim
"autocmd StdinReadPre * let s:std_in=1
"autocmd VimEnter * if argc() == 0 && !exists("s:std_in") | NERDTree | endif

" Exit vim even if last window is Nerd-Tree
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif
