#!/bin/bash

#Include all system-wide xinitrc scripts
if [ -d /etc/X11/xinit/xinitrc.d ] ; then
  for f in /etc/X11/xinit/xinitrc.d/?*.sh ; do
    [ -x "$f" ] && . "$f"
  done
  unset f
fi

export SSH_ASKPASS=/usr/lib/ssh/x11-ssh-askpass
export PATH=$HOME/bin:$PATH
export DE=generic
export EDITOR=code
export XDG_CONFIG_HOME=$HOME/.config
export XDG_CURRENT_DESKTOP=X-Generic
export QT_QPA_PLATFORMTHEME=qt5ct #This is needed for skinning KDE applications

#xlogin unsets the dbus address if it is the system bus, let's re-set it...
export DBUS_SESSION_BUS_ADDRESS=unix:path=$XDG_RUNTIME_DIR/bus

#Set directories used by gnomish tools (particularly, blueberry-tray!)
xdg-user-dirs-update

# Remap caps lock to escape
setxkbmap -option caps:escape

#Keep the screen on
xset dpms 0 0 0
xset s off
xset -dpms

# display wallpaper during loading
# feh --bg-fill /home/marco/Images/wallpaper.jpg
hsetroot -solid "#16161e"

#Recover volumes
alsactl init

#Set altgr international keyboard map
setxkbmap -variant altgr-intl

xrdb ~/.Xresources

#Turn on numlock
numlockx on

#clipboard
/usr/bin/clipit &

#map the touchscreen to internal display, not all connected monitors
xinput --map-to-output 'ELAN Touchscreen' eDP

# thinkpad fan controller
modprobe thinkpad_acpi
#thinkfan -n &

#Open SSH keychain, load into systemd user environment
eval $(keychain --systemd -q --eval)

#start thing for transparency
#picom --config /home/marco/.config/picom/picom.conf &
picom --config /home/marco/.config/picom/picom.conf -b --experimental-backends  &
#Start i3
exec i3
