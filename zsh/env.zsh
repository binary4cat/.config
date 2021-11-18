export PATH=$HOME/.local/bin:$PATH
export XDG_CONFIG_HOME=$HOME/.config
export LOCALBIN=$XDG_CONFIG_HOME/bin
export PATH=$PATH:$LOCALBIN
export LOCALPROG=$HOME/prog

# golang
export GO111MODULE=on
export GOPROXY=https://goproxy.cn,direct
export GOPRIVATE=devgit.starschina.com/*

export PATH=$PATH:/usr/local/bin 
export PATH=$PATH:$HOME/go/bin
export PATH="$PATH":"$HOME/.pub-cache/bin"

export TERM=xterm-256color
export TERM_ITALICS=true
export RANGER_LOAD_DEFAULT_RC="false"
export EDITOR=nvim
export ZSH_AUTOSUGGEST_USE_ASYNC=1
export ZSH_AUTOSUGGEST_MANUAL_REBIND=1
export POWERLEVEL9K_CONFIG_FILE=$HOME/.config/.p10k.zsh
export ZIM_HOME=$HOME/.zim
export STARSHIP_CONFIG=~/.config/zsh/starship/config.toml
