set fish_greeting ""
setenv EDITOR vim

alias grep='grep --color=auto'
alias cx='cd ..'
alias l='ls -FsGgHhlprt'
alias mv='mv -i'
alias cp='cp -i'
alias tmux='tmux -2'
alias tt='tmux attach'
alias tl='tmux list-sessions'
alias ttt='tmux attach -dt'
alias newspeak='ssh -t context ssh newspeak'
alias quenya='ssh -t context ssh quenya'

set -gx PATH $HOME/anaconda3/bin $PATH

# Base16 Shell
if status --is-interactive
    eval sh ~/.config/base16-shell/scripts/base16-solarized-light.sh
end
