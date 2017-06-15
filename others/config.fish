# tmux

set -g -x PATH /usr/local/bin /Users/fs/cross-compiler $PATH
set fish_greeting ""
setenv EDITOR vim

alias nnn='ncmpcpp'
alias grep='grep --color=auto'
alias cx='cd ..'
alias l='ls -FsGgHhlprt'
alias mv='mv -i'
alias cp='cp -i'
alias vim='mvim -v'
alias vi='mvim -v'
alias irc='irssi'
alias clk='tty-clock -sctDC 1'
alias awd='ls -lghGFH'
alias asd='cd'
alias rg='ranger'
alias tmux='env TERM=screen-256color tmux'
alias tt='tmux attach'
alias tl='tmux list-sessions'
alias ttt='tmux attach -dt'
alias gup='git add --all :/; git commit -a -m "Update"; git push origin master'
alias py16='env OMP_NUM_THREADS=16 python'
alias py8='env OMP_NUM_THREADS=8 python'
alias py4='env OMP_NUM_THREADS=4 python'
alias py2='env OMP_NUM_THREADS=2 python'
alias py='env OMP_NUM_THREADS=1 python'
alias htop='sudo htop -u fs'
alias xshow='setfile -a v'
alias xhide='setfile -a V'
alias pgit="proxychains4 git"
alias pssh="proxychains4 /usr/local/bin/ssh"
alias pc="proxychains4"
alias youtube="youtube-dl -f bestvideo+bestaudio"

set -gx PYTHONPATH /Library/Python/2.7/site-packages/
set -gx PATH /Users/fs/anaconda3/bin $PATH
set -gx TF_VAR_key_pair shi-key
set -gx TF_VAR_access_key AKIAIKSWTVV5LDUTFRAQ
set -gx TF_VAR_secret_key 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
set -gx QB_AWS_S3_BUCKET entilzha-us-west-2
set -gx QB_AWS_S3_NAMESPACE pedro

# eval (python -m virtualfish auto_activation)

begin
    set --local AUTOJUMP_PATH $HOME/.autojump/share/autojump/autojump.fish
    if test -e $AUTOJUMP_PATH
        source $AUTOJUMP_PATH
    end
end

function fuck -d 'Correct your previous console command'
    set -l exit_code $status
    set -l eval_script (mktemp 2>/dev/null ; or mktemp -t 'thefuck')
    set -l fucked_up_commandd $history[1]
    thefuck $fucked_up_commandd > $eval_script
    . $eval_script
    rm $eval_script
    if test $exit_code -ne 0
        history --delete $fucked_up_commandd
    end
end

# Base16 Shell
if status --is-interactive
    eval sh $HOME/.config/base16-shell/scripts/base16-eighties.sh
end
