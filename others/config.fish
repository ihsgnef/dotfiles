# Base16 Shell
eval sh $HOME/.config/base16-shell/base16-default.dark.sh

set -g -x PATH /usr/local/bin $PATH
set fish_greeting ""
alias vmrun='/Applications/VMware\ Fusion.app/Contents/Library/vmrun'
alias vmubuntu='vmrun -T fusion start ~/Documents/Virtual\ Machines.localized/Ubuntu\ 64-bit.vmwarevm/Ubuntu\ 64-bit.vmx nogui'
alias ubuntu='ssh fs@172.16.145.162'

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

alias eclim='nohup /Applications/eclipse\ 2/eclimd -Dosgi.instance.area.default=/Users/fs/workspace &'
alias eclimshutdown='/Applications/eclipse\ 2/eclim -command shutdown'

alias hadoop87='ssh kddcup@172.16.7.87'
alias hadoop88='ssh kddcup@172.16.7.88'
alias tqchen='ssh -X tqchen@172.16.2.17'
alias galaxy='ssh fs@adapt.seiee.sjtu.edu.cn'

setenv EDITOR vim
