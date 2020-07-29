" Init.vim file(Loads all the configuation when neoVim is launched)

" I've sourced all the files from different directories to keep the init.vim clean.
" I don't know if $HOME variable exists in Windows Powershell or Command Prompt
" Please delete all the sourcing and copy and paste the configs 
" and replace UNIX ones with Windows options that have been provided in each file 
" in settings and plugins directories into init.vim file if you're using Windows.
" If using UNIX like Operating Systems, you can keep it as is.

source $HOME/.config/nvim/settings/settings.vim
source $HOME/.config/nvim/settings/keymappings.vim
source $HOME/.config/nvim/plugins/vimplugged.vim
source $HOME/.config/nvim/plugins/nerdtree.vim
source $HOME/.config/nvim/plugins/onedark.vim
source $HOME/.config/nvim/plugins/lightline.vim
source $HOME/.config/nvim/plugins/markdownPreview.vim