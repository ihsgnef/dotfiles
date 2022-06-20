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
alias ydl="yt-dlp -f 'bestvideo[ext=mp4]+bestaudio[ext=m4a]/bestvideo+bestaudio' --merge-output-format mp4"
alias unp='unp -U'
alias rsync='rsync -v -r --progress -e ssh'

# Base16 Shell
if status --is-interactive
    set BASE16_SHELL "$HOME/.config/base16-shell/"
    source "$BASE16_SHELL/profile_helper.fish"
end

set -gx PATH ~/.local/bin $PATH
set -Ux PYENV_ROOT $HOME/.pyenv
set -U fish_user_paths $PYENV_ROOT/bin $fish_user_paths

pyenv init - | source

# ruby
set -gx PATH /usr/local/opt/llvm/bin $PATH
set -gx LDFLAGS "-L /usr/local/opt/llvm/lib"
set -gx CPPFLAGS "-I /usr/local/opt/llvm/include"
set -gx RUBY_CONFIGURE_OPTS "--with-openssl-dir='brew --prefix openssl'"
set -gx CONFIGURE_OPTS "--with-openssl-dir='brew --prefix openssl'"
