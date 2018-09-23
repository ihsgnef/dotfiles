sudo apt update
sudo apt install build-essential vim git curl tmux xclip
sudo apt install software-properties-common python-software-properties 
sudo apt install arandr ranger thunar tlp vlc acpid
sudo apt install gnome-screensaver gnome-terminal
sudo apt install ibus-rime ibus-gtk ibus-gtk3 ibus-qt4
sudo apt install libx11-dev python-dev libxft-dev

cd ~/Downloads
wget https://dl.google.com/linux/direct/google-chrome-stable_current_amd64.deb
sudo dpkg -i google-chrome-stable_current_amd64.deb
sudo apt -f install

git clone https://github.com/chriskempson/base16-shell.git ~/.config/base16-shell

cd ~/Downloads
curl https://raw.githubusercontent.com/Shougo/neobundle.vim/master/bin/install.sh > install.sh
sh ./install.sh
mkdir -p ~/.vim/colors
cd ~/.vim/colors
git clone git://github.com/chriskempson/base16-vim.git base16
cp base16/colors/*.vim .
cp ~/dotfiles/vimrc ~/.vimrc


# sudo add-apt-repository ppa:linrunner/tlp
# sudo apt update
# sudo apt install tlp 
# sudo apt install tlp-rdw
# sudo apt install tp-smapi-dkms acpi-call-dkms
# sudo apt install acpitool
# sudo tlp start
# sudo apt install powertop
# sudo powertop --auto-tune

sudo apt-add-repository ppa:fish-shell/release-2
sudo apt update
sudo apt install fish
mkdir -p ~/.config/fish
cp ~/dotfiles/config.fish ~/.config/fish/config.fish
curl -Lo ~/.config/fish/functions/fisher.fish --create-dirs https://git.io/fisher
fisher rafaelrinaldi/pure
fisher z

sudo add-apt-repository  ppa:klaus-vormweg/awesome -y
sudo apt update
sudo apt install  awesome -y
cp -r ~/dotfiles/awesome ~/.config/awesome
cd ~/.config/awesome
git clone https://github.com/deficient/volume-control.git
git clone https://github.com/deficient/battery-widget.git
sudo systemctl enable acpid

git config --global user.email "shifeng@cs.umd.edu"
git config --global user.name "ihsgnef"
git config --global alias.co checkout
git config --global alias.br branch
git config --global alias.ci commit
git config --global alias.st status
git config --global push.default simple

cp ~/dotfiles/tmux.conf ~/.tmux.conf

cd ~/Downloads
wget 'https://dl.suckless.org/st/st-0.8.1.tar.gz'
tar -xzvf st-0.8.1.tar.gz
cd ~/Downloads/st-0.8.1/
sudo make clean install
