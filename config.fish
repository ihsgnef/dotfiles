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
alias newspeak='ssh -t clipsub ssh newspeak'
alias quenya='ssh -t clipsub ssh quenya'

set -gx PATH $HOME/anaconda3/bin $PATH
set -gx RANGER_LOAD_DEFAULT_RC false

# Base16 Shell
if status --is-interactive
    eval sh ~/.config/base16-shell/scripts/base16-onedark.sh
end
