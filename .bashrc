#
# ~/.bashrc
#

export EDITOR=vim
export PATH=/home/$USER/bin:/home/marco/Documents/ddvtech/repo:$PATH

export HISTFILESIZE=10000
export HISTCONTROL=erasedups
export HISTSIZE=10000
export HISTIGNORE='ls:bg:fg:history:du:exit:make'

# Set clear command to clear and display system info
alias clear='clear && neofetch | lolcat'

if [ -e /usr/share/terminfo/s/st-256color ]; then
        export TERM='st-256color'
else
        export TERM='st'
fi

if [ "$TERM" = "linux" ]; then
#     echo -en "\e]P0232323" #black
    echo -en "\e]P82B2B2B" #darkgrey
#     echo -en "\e]P1D75F5F" #darkred
#     echo -en "\e]P9E33636" #red
#     echo -en "\e]P287AF5F" #darkgreen
#     echo -en "\e]PA98E34D" #green
#     echo -en "\e]P3D7AF87" #brown
#     echo -en "\e]PBFFD75F" #yellow
#     echo -en "\e]P48787AF" #darkblue
#     echo -en "\e]PC7373C9" #blue
#     echo -en "\e]P5BD53A5" #darkmagenta
#     echo -en "\e]PDD633B2" #magenta
#     echo -en "\e]P65FAFAF" #darkcyan
#     echo -en "\e]PE44C9C9" #cyan
#     echo -en "\e]P7E5E5E5" #lightgrey
#     echo -en "\e]PFFFFFFF" #white
    clear #for background artifacting
fi


# # If not running interactively, don't do anything
# [[ $- != *i* ]] && return

#alias ssh='TERM=xterm ssh'
alias ls='ls --color=auto'
#prompt() {
#    PS1="$(powerline-rs --shell bash --cwd-max-dir-size=6 $?)"
#}
#PROMPT_COMMAND=prompt

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
