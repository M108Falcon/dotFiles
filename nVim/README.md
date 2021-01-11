# nvimConfigs
My config files for NeoVim  
To understand which file does what, documentation has been added inside it.  

Add the configs to ~/.config/nvim/ directory to load them everytime you launch neovim.

## Requirements to run these configs properly.

#### 1. Install vim plugin manager [Vim Plugged](https://github.com/junegunn/vim-plug) to ensure plugins and settings work properly. 
1. Read the documentation from the linked project for usage instructions.  
2. Install the already mentioned plugins in [vimplugged.vim](plugins/vimplugged.vim) to start the config.

#### 2. Install [NerdFonts](https://github.com/ryanoasis/nerd-fonts) to enable proper rendering of icon-glyphs.
1. Download your favorite Nerd Fonts from the project link.
2. Place them in ~/.local/share/fonts/ directory.
3. Run `fc-cache -fv` to rebuild font-cache and install newly downloaded fonts.
4. To view font family, run `fc-list : family` to list family names of all fonts installed in system.
5. If using gVim, use `set guifont=<FONT_FAMILY> <FONT_SIZE>`, to integrate vim-devicons using nerd-fonts.

#### 3. Install Nodejs >= v10.12 [coc-nvim](https://github.com/neoclide/coc.nvim) to work correctly.
1. Read the documentation for the project from the link provided to learn how to use.
2. To install nodejs locally, download the linux binaries from [here](https://nodejs.org/en/download/), extract them and add the directory(prefreably ~/.local/lib/) to path, coc-nvim will automatically communicate with nodejs and work flawlessly.


##### If you're a windows user, please refer to [Readme for Windows](README(Windows).md).
