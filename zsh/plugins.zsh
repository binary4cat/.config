export PLUG_DIR=$HOME/.config/.zim
if [[ ! -d $PLUG_DIR ]]; then
	curl -fsSL https://raw.githubusercontent.com/zimfw/install/master/install.zsh | zsh
	rm ~/.zimrc
	ln -s ~/.config/zsh/zimrc ~/.zimrc
fi

if [[ ! -d ~/.config/.zsh-autopair ]]; then
  git clone https://github.com/hlissner/zsh-autopair ~/.config/.zsh-autopair
fi