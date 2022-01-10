set -x PATH            $HOME/.local/bin:$PATH
set -x XDG_CONFIG_HOME $HOME/.config
set -x LOCALBIN        $XDG_CONFIG_HOME/bin
set -x PATH            $PATH:$LOCALBIN
set -x LOCALPROG       $HOME/prog

# golang
set -x GO111MODULE on
set -x GOPROXY     "https://goproxy.cn,direct"
set -x GOPRIVATE   "devgit.starschina.com/*"
set -x PATH        $PATH:/usr/local/bin 
set -x PATH        $PATH:$HOME/go/bin
set -x PATH        "$PATH":"$HOME/.pub-cache/bin"

#export TERM=xterm-256color
#export TERM_ITALICS=true
set -x RANGER_LOAD_DEFAULT_RC        "false"
set -x EDITOR                        nvim
set -x ZSH_AUTOSUGGEST_USE_ASYNC     1
set -x ZSH_AUTOSUGGEST_MANUAL_REBIND 1
set -x POWERLEVEL9K_CONFIG_FILE      $HOME/.config/.p10k.zsh
set -x ZIM_HOME                      $HOME/.zim
set -x STARSHIP_CONFIG               ~/.config/zsh/starship/config.toml

# fcitx5
set -x GTK_IM_MODULE  DEFAULT=fcitx
set -x QT_IM_MODULE   DEFAULT=fcitx
set -x XMODIFIERS     DEFAULT=@im=fcitx
set -x INPUT_METHOD   DEFAULT=fcitx
set -x SDL_IM_MODULE  DEFAULT=fcitx
set -x GLFW_IM_MODULE DEFAULT=ibus
