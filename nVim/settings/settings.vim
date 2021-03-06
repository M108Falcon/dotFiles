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
set linebreak                           " Linebreak, together with wrap, will function as word-wrap
set wildmenu                            " Toggle command mode autocompletion
set noshowmode                          " Remove mode name from bottom (Useful if using statusline)
"set mouse=a                            " Enable Mouse (a indicates all modes)
"set cmdheight=2                        " Increase space for displaying messages
set splitbelow                          " New horizontal split always goes to bottom
set splitright                          " New vertical split always goes to right
set conceallevel=0                      " To see `` in markdown files
set hidden                              " For Coc.nvim
set t_Co=256                            " Set color support to 256 colors
set nobackup                            " coc setting to toggle lang server backup
set nowritebackup                       " coc setting
set updatetime=300                      " Faster time to display autocompletion
set clipboard+=unnamedplus              " Copied content goes to universal registers
set autochdir                           " Change directory automatically acc to file location
set termguicolors                       " Set colors for color plugins to work
set background=dark                     " Always set dark background

" See invisible characters
set list listchars=tab:>\ ,trail:+,eol:$

" Set fonts for gui clients
set guifont=Iosevka\ Nerd\ Font:h20

" Autosource when writing to init.vim(you can also run :source $MYVIMRC)
au! BufWritePost $MYVIMRC source %

" make background transparent
autocmd vimenter * hi Normal guibg=NONE ctermbg=NONE

" make comments italic
autocmd BufReadPre * hi Comment cterm=italic gui=italic

" Custom command to import Assignment LaTeX template
command AssignmentTemplate :r ~/Documents/docs/tex_Samples/assignment_template.tex

" Custom command to import Code Assignment LaTeX template
command CodeAssignmentTemplate :r ~/Documents/docs/tex_Samples/code_assignment_template.tex

" Custom command to import MR Report Template
command MRTemplateReport :r ~/Documents/docs/tex_Samples/MR_report_template.tex
