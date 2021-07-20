# Or emacs?
export EDITOR=vim
# Append folders containing executeables to your path here
export PATH=/home/$USER/bin:/home/marco/Documents/ddvtech/repo:$PATH
# Number of lines or commands that are stored in memory in a history list while your bash session is ongoing
export HISTSIZE=10000
# how many lines we can remember across sessions
export HISTFILESIZE=10000
export HISTCONTROL=erasedups
export HISTIGNORE='ls:bg:fg:history:du:exit:make'


if [ -e /usr/share/terminfo/s/st-256color ]; then
        export TERM='st-256color'
else
        export TERM='st'
fi

alias ls='ls --color=auto'
alias info='clear && neofetch | lolcat'
alias wisdom='fortune | cowsay | lolcat'
alias bonsai='cbonsai --life 40 --live --multiplier 5 --time 0.1 --infinite'
alias pipes='pipes -t 0 -p 3 -R -f 50 -r 6000'

# Statusline plugin for vim, bash and others
powerline-daemon -q
POWERLINE_BASH_CONTINUATION=1
POWERLINE_BASH_SELECT=1
. /usr/share/powerline/bindings/bash/powerline.sh

man() {
    env LESS_TERMCAP_mb=$'\E[01;31m' \
    LESS_TERMCAP_md=$'\E[01;38;5;74m' \
    LESS_TERMCAP_me=$'\E[0m' \
    LESS_TERMCAP_se=$'\E[0m' \
    LESS_TERMCAP_so=$'\E[38;5;246m' \
    LESS_TERMCAP_ue=$'\E[0m' \
    LESS_TERMCAP_us=$'\E[04;38;5;146m' \
    man "$@"
}

# CD to work directory
#cd ~/Documents/ddvtech/ 
