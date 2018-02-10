cd Downloads
sudo apt update
sudo apt install build-essential vim git tmux fish awesome arandr
sudo apt install ibus-rime ibus-gtk ibus-gtk3 ibus-qt4
sudo apt install gnome-terminal thunar
wget https://dl.google.com/linux/direct/google-chrome-stable_current_amd64.deb
sudo dpkg -i google-chrome-stable_current_amd64.deb
sudo apt-get -f install
git clone https://github.com/chriskempson/base16-shell.git ~/.config/base16-shell
mkdir -p ~/.vim/colors
cd ~/.vim/colors
git clone git://github.com/chriskempson/base16-vim.git base16
cp base16/colors/*.vim .
cd Downloads
curl https://raw.githubusercontent.com/Shougo/neobundle.vim/master/bin/install.sh > install.sh
sh ./install.sh
sudo add-apt-repository ppa:linrunner/tlp
sudo apt update
sudo apt install tlp tlp-rdw
sudo apt install tp-smapi-dkms acpi-call-dkms
sudo apt install acpitool
sudo tlp start
sudo apt install powertop
sudo powertop --auto-tune
git config --global user.email "shifeng@cs.umd.edu"
git config --global user.name "ihsgnef"
git config --global alias.co checkout
git config --global alias.br branch
git config --global alias.ci commit
git config --global alias.st status
sudo apt install texlive-full
