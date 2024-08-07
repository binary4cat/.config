alias av='source venv/bin/activate'
alias c='clear'
alias cdiff='colordiff'
alias cs='calcurse'
alias dv='deactivate'
alias gc='git config credential.helper store'
alias gg='git clone'
alias ipy='ipython'
alias lg='lazygit'
alias ms='mailsync'
alias mt='neomutt'
alias r='echo $RANGER_LEVEL'
alias pu='python3 -m pudb'
alias ra='ranger'
# ra() {
#if [ -z "$RANGER_LEVEL" ]
#then
#ranger
#else
#exit
#fi
#}
alias s='neofetch'
alias g='onefetch'
alias sra='sudo -E ranger'
alias sudo='sudo -E'
alias vim='nvim'
alias gs='git config credential.helper store'
alias bat='sudo tlp bat'
alias ac='sudo tlp ac'
alias gy='git-yolo'
alias nb='newsboat -r'
alias nt='sh -c "cd (pwd); st" > /dev/null 2>&1 &'
alias ta='tmux a'
alias t='tmux'
# alias lo='lsof -p $(fps) +w'

# alias
alias fuckup="sudo pacman -Syyu"
alias pacman="sudo pacman"
alias pacmans="sudo pacman -S"
alias n="neofetch"
alias r="sudo ranger"
## path short
alias cibn="cd /data/develop/starschina/cibn-kernel"
alias mcp="cd /data/develop/starschina/cibn-kernel/mcp"
## Colorize the ls output ##
# alias ls='ls --color=auto'
alias ls="exa -al --color=always --group-directories-first"
## Use a long listing format ##
alias ll='ls -la'
## Show hidden files ##
alias l.='ls -d .* --color=auto'
alias mkdir='mkdir -pv'
# handy short cuts #
alias h='history'
alias j='jobs -l'
alias vi=vim
# Stop after sending count ECHO_REQUEST packets #
alias ping='ping -c 5'
# Do not wait interval 1 second, go fast #
alias fastping='ping -c 100 -s.2'
alias ports='netstat -tulanp'
# do not delete / or prompt if deleting more than 3 files at a time #
alias rm='rm -I --preserve-root'
# confirmation #
alias mv='mv -i'
alias cp='cp -i'
alias ln='ln -i'
# Parenting changing perms on / #
alias chown='chown --preserve-root'
alias chmod='chmod --preserve-root'
alias chgrp='chgrp --preserve-root'
## this one saved by butt so many times 
alias wget='wget -c'
#alias cat="bat"
alias top="htop"
## control system
alias only_use_hdmi="xrandr --auto --output HDMI-1 --primary && xrandr --output HDMI-1 --auto --output eDP-1 --off"
alias wifi_conn="sudo wifi-menu"
alias audio_control="alsamixer"
alias wifi_conn_gui="sudo nm-connection-editor"

alias myip="ifconfig | sed -En 's/127.0.0.1//;s/.*inet (addr:)?(([0-9]*\.){3}[0-9]*).*/\2/p'"
alias dcrunbuild="docker run --net=host --privileged --cap-add SYS_ADMIN -it"

#### program
alias startsunlogin="sudo systemctl start runsunloginclient.service"
alias startdocker="sudo systemctl start docker.service"
# alias ssh="kitty +kitten ssh"
#alias mntaliyund="sudo rclone mount aliyundrivedav:/ /mnt/aliyundrive --cache-dir /tmp --allow-other --vfs-cache-mode writes --allow-non-empty --daemon --uid 1000 --gid 1000"
#alias mntdev="sudo mount -t cifs //BINARY4CAT/Develop /mnt/d/Develop -o credentials=/home/binary4cat/.credentials,ip=\"$(nmblookup BINARY4CAT | head -n 1 | cut -d ' ' -f 1)\",uid=1000,gid=1000"
