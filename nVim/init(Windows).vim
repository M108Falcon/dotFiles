" Init.vim file for Windows
"
" I couldn't use source method in Winodows
" So, here is the init.vim file with 
" All the Windows specific tweaks.

" Settings for NeoVim
set encoding=UTF-8                      " Set universal encoding
filetype plugin on                      " Sets plugin functionalities acc to file types
set ruler                               " Always show current cursor position
set smartcase                           " When searching, be smart about cases
set hlsearch                            " Highlight Search Results
syntax on                               " Enable syntax highlighting
set nu                                  " Show line numbers
set rnu                                 " Show relative line numbers
set expandtab                           " Use spaces instead of tabs
set shiftwidth=2                        " Change no of spaces=2 inserted for indentation
set tabstop=2                           " Insert 2 spaces for tab key pressed
set expandtab                           " Converts tabs into spaces
set ai                                  " Toggle Autoindent
set si                                  " Toggle Smart indent 
set wrap                                " Toggle Line Wrap
set wildmenu                            " Toggle command autocompletion
set noshowmode                          " Remove mode name from bottom
"set mouse=a                            " Enable Mouse 
"set cmdheight=2                        " Increase space for displaying messages
set splitbelow                          " New horizontal split always goes to bottom
set conceallevel=0                      " To see `` in markdown files
set splitright                          " New vertical split always goes to right
set t_Co=256                            " Set color support to 256 colors
set nobackup                            " coc setting to toggle lang server backup
set nowritebackup                       " coc setting
set updatetime=300                      " Faster time to display autocompletion
"set clipboard=unnamedplus
"set autochdir                           " Change directory automatically acc to file location
set background=dark                     " Always set dark background
au! BufWritePost $MYVIMRC source %      " Atuosource when writing to init.vim(you can also run :source $MYVIMRC)

" Keymappings for NeoVim

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

" Open powershell in horizontal split
nnoremap <leader>t  :10sp term://powershell<CR>

" Use <Esc> to exit exit terminal
:tnoremap <Esc> <C-\><C-n>
:tnoremap jk <C-\><C-n>

" Keymaps for tabs
nnoremap tn = :tabnew<space>
nnoremap tj = :tabnext<CR>
nnoremap tk = :tabprev<CR>
nnoremap tf = :tabfirst<CR>
nnoremap tl = :tablast<CR>

" VimPlug 
" vim plug is plugin manager and installed plugins go to specified directory:
call plug#begin('~\AppData\Local\nvim\plugged')

"specify plugins
Plug 'tmsvg/pear-tree'                                  " Bracket autocompletion
Plug 'itchyny/lightline.vim'                            " Sexy nvim statusline
Plug 'preservim/nerdtree'                               " Directory traversal in nvim
Plug 'neoclide/coc.nvim', {'branch': 'release'}         " Autocompletion engine
Plug 'joshdick/onedark.vim'                             " Vim Colorscheme
Plug 'sheerun/vim-polyglot'                             " Syntax highlighting for nvim
Plug 'luochen1990/rainbow'                              " Bracket Colorizer
Plug 'preservim/nerdcommenter'                          " Multiline comments in nvim
Plug 'ryanoasis/vim-devicons'                           " Icon Glyphs for nvim
Plug 'iamcco/markdown-preview.nvim', { 'do': 'cd app & yarn install'  }   " Markdown previewer for nvim
Plug 'norcalli/nvim-colorizer.lua'			 " Colorizer engine, works realtime

"plug end
call plug#end()

"Enable rainbow globally
let g:rainbow_active=1

" Lightline Setup to enable automatic filetype based glyphs in statusline
let g:lightline = {
    \ 'component_function': {
    \   'filetype': 'MyFiletype',
    \   'fileformat': 'MyFileformat',
    \ }
    \ }

function! MyFiletype()
  return winwidth(0) > 70 ? (strlen(&filetype) ? &filetype . ' ' . WebDevIconsGetFileTypeSymbol() : 'no ft') : ''
endfunction
      
function! MyFileformat()
  return winwidth(0) > 70 ? (&fileformat . ' ' . WebDevIconsGetFileFormatSymbol()) : ''
endfunction

function! MyFileformat()
  return winwidth(0) > 70 ? (&fileformat . ' ' . WebDevIconsGetFileFormatSymbol()) : ''
endfunction

" Colorscheme for lightline : Possible names(instead of defualt) -> onedark, wombat, seoul256, landscape
let g:lightline.colorscheme = 'default'

" Nerd Tree Config
" Open Nerd-tree with keybind
map <leader>n :NERDTreeToggle<CR>

" Open Nerd-Tree when no file/directory is specified in vim
autocmd StdinReadPre * let s:std_in=1
autocmd VimEnter * if argc() == 0 && !exists("s:std_in") | NERDTree c:\Users\username | endif

" Exit vim even if last window is Nerd-Tree
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif

"Colorscheme Config
" onedark.vim override: Don't set a background color when running in a terminal;
if (has("autocmd") && !has("gui_running"))
  augroup colorset
    autocmd!
    let s:white =  { "gui": "#ABB2BF", "cterm": "145", "cterm16" : "7" }
    autocmd ColorScheme * call onedark#set_highlight("Normal", { "fg": s:white }) " `bg` will not be styled since there is no `bg` setting
  augroup END
endif

" onedark.vim enable italic comments and colorfixes
hi Comment cterm=italic
let g:onedark_hide_endofbuffer=1
let g:onedark_terminal_italics=1
let g:onedark_termcolors=256

syntax on
colorscheme onedark

" checks if your terminal has 24-bit color support
if (has("termguicolors"))
    set termguicolors
    hi LineNr ctermbg=NONE guibg=NONE
endif

" Configuration for Vim Colorizer
require'colorizer'.setup(
  {'*';},
  {
    RGB      = true;         -- #RGB hex codes
	  RRGGBB   = true;         -- #RRGGBB hex codes
	  names    = true;         -- "Name" codes like Blue
	  RRGGBBAA = true;         -- #RRGGBBAA hex codes
	  rgb_fn   = true;         -- CSS rgb() and rgba() functions
	  hsl_fn   = true;         -- CSS hsl() and hsla() functions
	  css      = true;         -- Enable all CSS features: rgb_fn, hsl_fn, names, RGB, RRGGBB
	  css_fn   = true;         -- Enable all CSS *functions*: rgb_fn, hsl_fn
  })
  
  " Conifguration for Markdown preview.vim

" set to 1, nvim will open the preview window after entering the markdown buffer
" default: 0
let g:mkdp_auto_start = 1

" set to 1, the nvim will auto close current preview window when change
" from markdown buffer to another buffer
" default: 1
let g:mkdp_auto_close = 1

" specify browser to open preview page I have set my browser to chromium
" default: ''
let g:mkdp_browser = 'firefox'
" Change the name of your preferred Browser instead of Firefox to open
" Markdown Preview in it.
" Use Chromium if using Linux/UNIX and Chrome if using Windows/MacOS
