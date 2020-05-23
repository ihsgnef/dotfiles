# basic software
sudo apt update
sudo apt -y install software-properties-common build-essential make vim git curl libx11-dev python-dev libxft-dev libevent-dev libncurses-dev lxrandr sshfs


# # brew
# /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install.sh)"



# ssh
cp ~/dotfiles/ssh_config ~/.ssh/config
# ssh-copy-id clipsub


# fish config
mkdir -p ~/.config/fish
cp ~/dotfiles/config.fish ~/.config/fish/config.fish



# tmux config
cp ~/dotfiles/tmux.conf ~/.tmux.conf


# neobundle
curl https://raw.githubusercontent.com/Shougo/neobundle.vim/master/bin/install.sh > install.sh
sh ./install.sh
rm install.sh


# base16
git clone https://github.com/chriskempson/base16-shell.git ~/.config/base16-shell
mkdir -p ~/.vim/colors
cd ~/.vim/colors
git clone git://github.com/chriskempson/base16-vim.git base16
cp base16/colors/*.vim .
cp ~/dotfiles/vimrc ~/.vimrc


# git config
git config --global user.email "shifeng@cs.umd.edu"
git config --global user.name "ihsgnef"
git config --global alias.co checkout
git config --global alias.br branch
git config --global alias.ci commit
git config --global alias.st status
git config --global push.default simple
