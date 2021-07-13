#
# ~/.bashrc
#

export EDITOR=vim
export PATH=/home/$USER/bin:$PATH

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
