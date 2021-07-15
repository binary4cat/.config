# install zim and use it install plugins

if [[ ! -d "$HOME/.zim" ]]; then
	curl -fsSL https://raw.githubusercontent.com/zimfw/install/master/install.zsh | zsh
	rm $HOME/.zimrc
	ln -s $HOME/.config/zsh/zimrc $HOME/.zimrc
	zimfw install
fi

# install zsh-autopair
if [[ ! -d "$HOME/.config/.zsh-autopair" ]]; then
  git clone https://github.com/hlissner/zsh-autopair $HOME/.config/.zsh-autopair
fi