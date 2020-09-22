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
alias quenya='ssh -t clipsub ssh quenya'
alias ydl="youtube-dl -f 'bestvideo[ext=mp4]+bestaudio[ext=m4a]/bestvideo+bestaudio' --merge-output-format mp4"

# Base16 Shell
if status --is-interactive
    set BASE16_SHELL "$HOME/.config/base16-shell/"
    source "$BASE16_SHELL/profile_helper.fish"
end
