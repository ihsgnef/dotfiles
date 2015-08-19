
# tmux

set -g -x PATH /usr/local/bin /Users/fs/cross-compiler $PATH
set fish_greeting ""
setenv EDITOR vim

alias nnn='ncmpc'
alias grep='grep --color=auto'
alias cx='cd ..'
alias l='ls -FsGgHhlp'
alias vi='vim'
alias irc='irssi'
alias clk='tty-clock -sctDC 1'
alias awd='ls -lghGFH'
alias asd='cd'
alias rg='ranger'
alias py='python'
alias tt='tmux attach -t'
alias tl='tmux list-sessions'
alias galaxy='ssh fs@adapt.seiee.sjtu.edu.cn'
alias milky='ssh -p 9022 fs@202.120.38.145'
alias gup='git add --all :/; git commit -a -m "Update"; git push origin master'
alias py8='env OMP_NUM_THREADS=8 python'
alias py4='env OMP_NUM_THREADS=4 python'

set --export PYTHONPATH /Library/Python/2.7/site-packages/
set PATH /Users/$USER/.opam/system/bin $PATH

# OPAM configuration
. /Users/fs/.opam/opam-init/init.fish > /dev/null 2> /dev/null or true
