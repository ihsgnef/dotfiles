# Base16 Shell
# eval sh $HOME/.config/base16-shell/base16-tomorrow.dark.sh

tmux

set -g -x PATH /usr/local/bin /Users/fs/cross-compiler $PATH
set fish_greeting ""
alias vmrun='/Applications/VMware\ Fusion.app/Contents/Library/vmrun'
alias vmubuntu='vmrun -T fusion start ~/Documents/Virtual\ Machines.localized/Ubuntu\ 64-bit\ 14.04.2.vmwarevm/Ubuntu\ 64-bit\ 14.04.2.vmx nogui'
alias ubuntu='ssh fs@172.16.145.198'

alias antlr4='java -jar /usr/local/lib/antlr-4.0-complete.jar'
alias grun='java org.antlr.v4.runtime.misc.TestRig'
# alias gitc='cp -R ~/workspace/compiler2014/* ~/Git/compiler2014/'
alias nnn='ncmpc'

alias grep='grep --color=auto'
alias cx='cd ..'
alias l='ls -FsGgHhlp'
alias vi='vim'
alias irc='irssi'
alias clk='tty-clock -sctDC 1'
alias awd='ls -lghGFH'
alias asd='cd'
alias py='python'
alias tt='tmux attach -t'
alias tl='tmux list-sessions'

alias galaxy='ssh fs@adapt.seiee.sjtu.edu.cn'

alias gup='git add --all; git commit -a -m "Update"; git push origin master'

setenv EDITOR vim

set --export PYTHONPATH /Library/Python/2.7/site-packages/
