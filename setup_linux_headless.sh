sudo apt install software-properties-common build-essential make vim git curl libx11-dev python-dev libxft-dev sshfs libevent-dev libncurses-dev


sudo apt-add-repository ppa:fish-shell/release-3
sudo apt-get update
sudo apt-get install fish
mkdir -p ~/.config/fish
cp ~/dotfiles/config.fish ~/.config/fish/config.fish


TMUX_VERSION=3.0
wget https://github.com/tmux/tmux/releases/download/${TMUX_VERSION}/tmux-${TMUX_VERSION}.tar.gz
tar xf tmux-${TMUX_VERSION}.tar.gz
rm -f tmux-${TMUX_VERSION}.tar.gz

cd tmux-${TMUX_VERSION}
./configure
make
sudo make install
cd -
sudo rm -rf /usr/local/src/tmux-\*
sudo mv tmux-${TMUX_VERSION} /usr/local/src


curl https://raw.githubusercontent.com/Shougo/neobundle.vim/master/bin/install.sh > install.sh
sh ./install.sh
rm install.sh


git clone https://github.com/chriskempson/base16-shell.git ~/.config/base16-shell
mkdir -p ~/.vim/colors
cd ~/.vim/colors
git clone git://github.com/chriskempson/base16-vim.git base16
cp base16/colors/*.vim .
cp ~/dotfiles/vimrc ~/.vimrc


git config --global user.email "shifeng@cs.umd.edu"
git config --global user.name "ihsgnef"
git config --global alias.co checkout
git config --global alias.br branch
git config --global alias.ci commit
git config --global alias.st status
git config --global push.default simple
