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
set hidden                              " For Coc.nvim
set splitright                          " New vertical split always goes to right
set t_Co=256                            " Set color support to 256 colors
set nobackup                            " coc setting to toggle lang server backup
set nowritebackup                       " coc setting
set updatetime=300                      " Faster time to display autocompletion
"set clipboard=unnamedplus
set autochdir                           " Change directory automatically acc to file location
set background=dark                     " Always set dark background
au! BufWritePost $MYVIMRC source %      " Autosource when writing to init.vim(you can also run :source $MYVIMRC)
