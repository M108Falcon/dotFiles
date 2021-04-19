source $HOME/.config/nvim/settings/settings.vim
source $HOME/.config/nvim/settings/keymappings.vim
source $HOME/.config/nvim/settings/neovide.vim
source $HOME/.config/nvim/plugins/vimplugged.vim
source $HOME/.config/nvim/plugins/start-screen.vim
source $HOME/.config/nvim/plugins/nerdtree.vim
source $HOME/.config/nvim/plugins/onedark.vim
source $HOME/.config/nvim/plugins/lightline.vim
source $HOME/.config/nvim/plugins/markdownPreview.vim
source $HOME/.config/nvim/plugins/coc-keybinds.vim
luafile $HOME/.config/nvim/plugins/plug-colorizer.lua
source $HOME/.config/nvim/plugins/sonokai.vim

" Clear registers
"command! WipeReg for i in range(34,122) | silent! call setreg(nr2char(i), []) | endfor

" Set pyenv for neovim
let g:python3_host_prog = '~/.local/py3nivm/bin/python3'
