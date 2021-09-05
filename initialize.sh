# first install zsh and before install the zimfw
pacman -S zsh
wget -nv -O - https://raw.githubusercontent.com/zimfw/install/master/install.zsh | zsh
# get my .config
git clone https://github.com/hjdo/.config.git $HOME/.config
# link zshrc config file
ln -s $HOME/.config/zsh/zshrc $HOME/.zshrc
ln -s $HOME/.config/zsh/zimrc $HOME/.zimrc
