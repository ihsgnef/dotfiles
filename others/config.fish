# tmux

set -g -x PATH /usr/local/bin /Users/fs/cross-compiler $PATH
set fish_greeting ""
setenv EDITOR vim

alias nnn='ncmpcpp'
alias grep='grep --color=auto'
alias cx='cd ..'
alias l='ls -FsGgHhlp'
alias vim='mvim -v'
alias vi='mvim -v'
alias irc='irssi'
alias clk='tty-clock -sctDC 1'
alias awd='ls -lghGFH'
alias asd='cd'
alias rg='ranger'
alias tt='tmux attach -t'
alias tl='tmux list-sessions'
alias galaxy='ssh fs@adapt.seiee.sjtu.edu.cn'
alias milky='ssh -p 9022 fs@202.120.38.145'
alias gup='git add --all :/; git commit -a -m "Update"; git push origin master'
alias py16='env OMP_NUM_THREADS=16 python'
alias py8='env OMP_NUM_THREADS=8 python'
alias py4='env OMP_NUM_THREADS=4 python'
alias py2='env OMP_NUM_THREADS=2 python'
alias py='env OMP_NUM_THREADS=1 python'
alias htop='sudo htop -u fs'
alias conda='/Users/fs/miniconda2/bin/conda'
alias chromium='/Applications/Chromium.app/Contents/MacOS/Chromium --ppapi-flash-path=/Library/Internet\ Plug-Ins/PepperFlashPlayer/PepperFlashPlayer.plugin --ppapi-flash-version=21.0.0.197'
alias xxxshow='setfile -a v ~/Downloads/untitled.dmg'
alias xxxhide='setfile -a V ~/Downloads/untitled.dmg'

set --export PYTHONPATH /Library/Python/2.7/site-packages/

eval (python -m virtualfish auto_activation)

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
