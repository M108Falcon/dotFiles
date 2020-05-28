" vim plug is plugin manager and installed plugins go to specified directory:
call plug#begin('~/.config/nvim/plugged')

"specify plugins
Plug 'tmsvg/pear-tree'                                  " Bracket autocompletion
Plug 'itchyny/lightline.vim'                            " Sexy nvim statusline
Plug 'preservim/nerdtree'                               " Directory traversal in nvim
Plug 'neoclide/coc.nvim', {'branch': 'release'}         " Autocompletion engine
Plug 'joshdick/onedark.vim'                             " Vim Colorscheme
Plug 'sheerun/vim-polyglot'                             " Syntax highlighting for nvim
Plug 'luochen1990/rainbow'                              " Bracket Colorizer
Plug 'preservim/nerdcommenter'                          " Multiline comments in nvim
Plug 'ryanoasis/vim-devicons'                           " Icon theme for nvim

"plug end
call plug#end()

"Enable rainbow globally
let g:rainbow_active=1