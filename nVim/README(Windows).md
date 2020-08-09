# Instructions for Windows Users
## Make sure all the contents in the checklist are enabled/installed in your system
- [X] [NeoVim](https://github.com/neovim/neovim) isntallled and added to PATH.
- [X] [Git](https://gitforwindows.org/) installed and added to PATH.
- [X] [Nodejs](https://nodejs.org/en/download/) >= v10.12 installed and added to PATH.
- [X] [Yarn](https://classic.yarnpkg.com/en/docs/install/#alternatives-stable) installed globally(any way is fine although *I'd recommend through npm as it'll automatically make it available in PATH*) and added to PATH.
- [X] Patched [Nerd Fonts](https://github.com/ryanoasis/nerd-fonts) installed to make sure all the glyphs render correctly.
- [X] Vim Plugin Manager: [Vim Plug](https://github.com/junegunn/vim-plug) installed into ~\AppData\Local\nvim\autoload\ directory.
- [X] Rename init(Windows).vim to init.vim and paste in ~\AppData\Local\nvim\ directory
- [X] Replace 'username' in [init(Windows).vim](init(Windows).vim) on line 129 col 78 with your windows username.
- [X] Install plugins using PlugInstall command.

After you open NeoVim for the first time after copying the config file, you will get a ton of errors mentioning missing functions and dependencies. Don't be afraid, exit error message using 'q' and then in Command mode, write PlugInstall and press enter to install all plugins, once installed, restart NeoVim and everything will work correctly.

Complete the above checklist before installing and enabling Vim Plugins and you would ***hopefully*** not run into any problems.

#### To extract full potential out of your NeoVim experience, I'd recommned all the language compilers/interpreters that you're using added to PATH.
