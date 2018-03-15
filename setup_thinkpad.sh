sudo apt update
sudo apt install build-essential vim git tmux fish arandr fcitx-rime gnome-terminal thunar software-properties-common python-software-properties ranger tlp firefox vlc
wget https://dl.google.com/linux/direct/google-chrome-stable_current_amd64.deb

cd ~/Downloads
sudo dpkg -i google-chrome-stable_current_amd64.deb
sudo apt -f install

git clone https://github.com/chriskempson/base16-shell.git ~/.config/base16-shell
mkdir -p ~/.vim/colors
cd ~/.vim/colors
git clone git://github.com/chriskempson/base16-vim.git base16
cp base16/colors/*.vim .

cd ~/Downloads
curl https://raw.githubusercontent.com/Shougo/neobundle.vim/master/bin/install.sh > install.sh
sh ./install.sh

sudo apt install tox
sudo apt install libglib2.0-0 libgl1 libfontconfig1 libx11-xcb1 libxi6 libxrender1 libdbus-1-3
cd ~
git clone https://github.com/qutebrowser/qutebrowser.git
cd qutebrowser
tox -e mkvenv-pypi

# sudo add-apt-repository ppa:linrunner/tlp
# sudo apt update
# sudo apt install tlp 
# sudo apt install tlp-rdw
# sudo apt install tp-smapi-dkms acpi-call-dkms
# sudo apt install acpitool
# sudo tlp start
# sudo apt install powertop
# sudo powertop --auto-tune

sudo add-apt-repository  ppa:klaus-vormweg/awesome -y
sudo apt update
sudo apt install  awesome -y

git config --global user.email "shifeng@cs.umd.edu"
git config --global user.name "ihsgnef"
git config --global alias.co checkout
git config --global alias.br branch
git config --global alias.ci commit
git config --global alias.st status

cp ~/dotfiles/vimrc ~/.vimrc
cp ~/dotfiles/tmux.conf ~/.tmux.conf
mkdir ~/.config/fish/
cp ~/dotfiles/config.fish ~/.config/fish/config.fish
cp -r ~/dotfiles/awesome ~/.config/awesome
sudo apt install texlive-full
