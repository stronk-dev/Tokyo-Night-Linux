#
# ~/.bash_profile
#

[[ -f ~/.bashrc ]] && . ~/.bashrc

if [ -n "$DESKTOP_SESSION" ];then
    eval $(gnome-keyring-daemon --start)
    export SSH_AUTH_SOCK
fi

# Autostart xorg (and thus i3) when logging in
# Keep commented out if you want to use GDM
# or any other display manager to login
#if [[ -z$DISPLAY ]] && [[ $(tty) = /dev/tty1 ]]; then
#	startx
#fi
