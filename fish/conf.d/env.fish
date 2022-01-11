set -U PATH            $HOME/.local/bin:$PATH
set -U XDG_CONFIG_HOME $HOME/.config
set -U LOCALBIN        $XDG_CONFIG_HOME/bin
set -U PATH            $PATH:$LOCALBIN
set -U LOCALPROG       $HOME/prog

# golang
set -U GO111MODULE on
set -U GOPROXY     "https://goproxy.cn,direct"
set -U GOPRIVATE   "devgit.starschina.com/*"
set -U PATH        $PATH:/usr/local/bin 
set -U PATH        $PATH:$HOME/go/bin
set -U PATH        "$PATH":"$HOME/.pub-cache/bin"

#export TERM=xterm-256color
#export TERM_ITALICS=true
set -U RANGER_LOAD_DEFAULT_RC        "false"
set -U EDITOR                        nvim
set -U ZSH_AUTOSUGGEST_USE_ASYNC     1
set -U ZSH_AUTOSUGGEST_MANUAL_REBIND 1
set -U POWERLEVEL9K_CONFIG_FILE      $HOME/.config/.p10k.zsh
set -U ZIM_HOME                      $HOME/.zim
set -U STARSHIP_CONFIG               ~/.config/zsh/starship/config.toml

# fcitx5
set -U GTK_IM_MODULE  DEFAULT=fcitx
set -U QT_IM_MODULE   DEFAULT=fcitx
set -U XMODIFIERS     DEFAULT=@im=fcitx
set -U INPUT_METHOD   DEFAULT=fcitx
set -U SDL_IM_MODULE  DEFAULT=fcitx
set -U GLFW_IM_MODULE DEFAULT=ibus
