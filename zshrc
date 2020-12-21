# Enable Powerlevel10k instant prompt. Should stay close to the top of ~/.zshrc.
# Initialization code that may require console input (password prompts, [y/n]
# confirmations, etc.) must go above this block; everything else may go below.
# Autoload colors
autoload -U colors && colors
if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi

# Autocomplete and select directories from suggestions using tab

zstyle ':completion:*' completer _complete _ignored
zstyle ':completion:*' menu select=1
zstyle ':completion:*' select-prompt %SScrolling active: current selection at %p%s
zstyle :compinstall filename '/home/m108falcon/.zshrc'

autoload -Uz compinit
compinit

# Default editor
EDITOR=vim

# Accept autosuggest
bindkey '^ ' autosuggest-accept
# Vim mode in shell
bindkey -v 

# History config
HISTFILE=~/.cache/zshhistory
HISTSIZE=1000
SAVEHIST=1000

# load cutom path
export LD_LIBRARY_PATH=/usr/lib/cuda/lib64:$LD_LIBRARY_PATH
export LD_LIBRARY_PATH=/usr/lib/cuda/include:$LD_LIBRARY_PATH
export EXA_PATH=~/.local/bin:$EXA_PATH
export QT_QPA_PLATFORMTHEME=qt5ct

# load aliases
[ -f "$HOME/.bash_aliases" ] && source "$HOME/.bash_aliases"

# customized prompt, to customize again, run `p10k configure` or edit ~/.p10k.zsh.
[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh

# zsh plugins
source ~/Downloads/powerlevel10k/powerlevel10k.zsh-theme
source /usr/share/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh 2>/dev/null
source /usr/share/zsh-autosuggestions/zsh-autosuggestions.zsh 2>/dev/null
