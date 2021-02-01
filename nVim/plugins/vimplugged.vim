" NeoVim Plugins
call plug#begin('~/.config/nvim/plugged')

"specify plugins
Plug 'jiangmiao/auto-pairs'                             " Bracket autocompletion
Plug 'luochen1990/rainbow'                              " Bracket Colorizer
Plug 'itchyny/lightline.vim'                            " vim statusline
Plug 'preservim/nerdtree'                               " Directory traversal in vim
Plug 'neoclide/coc.nvim', {'branch': 'release'}         " Autocompletion engine (Requires NodeJS)
Plug 'sheerun/vim-polyglot'                             " Syntax highlighting for nvim
Plug 'preservim/nerdcommenter'                          " Multiline comments in nvim
Plug 'joshdick/onedark.vim'                             " Atom inspired one-dark colorscheme for vim 
Plug 'dracula/vim', { 'as': 'dracula' }                 " Dracula colorscheme for vim
Plug 'patstockwell/vim-monokai-tasty'                   " Sublime inspired monokai colorscheme for vim
Plug 'morhetz/gruvbox'                                  " Gruvbox colorscheme for vim
Plug 'ryanoasis/vim-devicons'                           " Icon theme for nvim
Plug 'norcalli/nvim-colorizer.lua'                      " Colorizer Engine written in Lua
Plug 'iamcco/markdown-preview.nvim', { 'do': 'cd app & yarn install'  }   " Markdown previewer for nvim (Requires yarn)
Plug 'donRaphaco/neotex', { 'for': 'tex' }              " LaTeX previewer for nvim
Plug 'Yggdroot/indentLIne'                              " See indentlines in nvim(required if using soft-tab)
                                                        " If using hard tabs, :set list lcs=tab:\|\  (Note: whitespace after last \)
                                                        " will do the work.

"plug end
call plug#end()

" place monokai_tasty as default colorscheme
"colorscheme vim-monokai-tasty

" enable italics
"let g:vim_monokai_tasty_italic = 1

" place gruvbox as default colorscheme
"colorscheme gruvbox

" place dracula as defualt colorscheme
"colorscheme dracula

"Enable rainbow globally
let g:rainbow_active=1

" Optional LaTeX compiler as xelatex
let g:neotex_pdflatex_alternative='xelatex'
