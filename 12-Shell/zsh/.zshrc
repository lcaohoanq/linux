fastfetch

# Enable Powerlevel10k instant prompt. Should stay close to the top of ~/.zshrc.
# Initialization code that may require console input (password prompts, [y/n]
# confirmations, etc.) must go above this block; everything else may go below.
if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi

# Path to your oh-my-zsh installation.
export ZSH="$HOME/.oh-my-zsh"

# See https://github.com/ohmyzsh/ohmyzsh/wiki/Themes
ZSH_THEME="powerlevel10k/powerlevel10k"

plugins=(
  git
  zsh-syntax-highlighting
  zsh-autosuggestions
)

source $ZSH/oh-my-zsh.sh

# User configuration
# Remove the background of folder
# remove ls highlight color
_ls_colors=":ow=01;03;33" #01: bold, 02: italic, 33: yellow 
zstyle ':completion:*:default' list-colors "${(s.:.)_ls_colors}"
LS_COLORS+=$_ls_colors

# auto suggest
ZSH_AUTOSUGGEST_HIGHLIGHT_STYLE="fg=#B0EBB4,bg=#000000,bold"

# starting dir
cd /media/lcaohoanq/

# nvm config
export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && . "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && . "$NVM_DIR/bash_completion"  # This loads nvm bash_completion

#-------- Global Alias {{{
globalias() {
  if [[ $LBUFFER =~ '[a-zA-Z0-9]+$' ]]; then
    zle _expand_alias
    zle expand-word
  fi
  zle self-insert
}
zle -N globalias
bindkey " " globalias                 # space key to expand globalalias
# bindkey "^ " magic-space            # control-space to bypass completion
bindkey "^[[Z" magic-space            # shift-tab to bypass completion
bindkey "^I^I" autosuggest-accept     # tab + tab for accept the suggestion
# bindkey -M isearch " " magic-space    # normal space during searches
# . ~/.zsh_aliases
#}}}

SPACESHIP_PROMPT_ADD_NEWLINE="true"
SPACESHIP_CHAR_SYMBOL="⚡"

# Turn off power status when using spaceship prompt
export SPACESHIP_BATTERY_SHOW=false

# To customize prompt, run `p10k configure` or edit ~/.p10k.zsh.
[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh

################# more ls aliases ####################
alias ll='ls -l'
alias la='ls -A'
alias l='ls -CF'
alias showdisk='cd /media/lcaohoanq/ ; ls -al'
alias yt='ytfzf'
alias 'nvim=/opt/nvim-linux64/bin/nvim'
alias cl='clear'
alias back='cd ..'
alias chrome='flatpak run com.google.Chrome'
alias spotify='snap run spotify'
alias insom='flatpak run rest.insomnia.Insomnia'
alias rzsh='source ~/.zshrc'
alias capture='flameshot gui'
alias intellij='snap run intellij-idea-ultimate'
alias mongodb='flatpak run com.mongodb.Compass'
alias rbspwm='bspc wm -r'
alias bluetooth='blueman-manager'
alias sound='pavucontrol'
alias wifi='nmcli device wifi list'
alias 'wifi-connect'='nmcli device wifi connect'
alias nikefe='cd /media/lcaohoanq/DATA/PIED/NikeCloneTraining-FE-Project'
alias nikebe='cd /media/lcaohoanq/DATA/PIED/NikeCloneTraining-BE-Project'
alias config='nvim ~/.config/bspwm/'
