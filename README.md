# Tokyo Night Linux theme

This collection is aimed to make your Linux environment look like the vscode <a href="https://github.com/enkia/tokyo-night-vscode-theme">Tokyo Night</a> theme. This is currently still a WIP, so expect colour  or unthemed applications. 

Although replacing your icon theme or cursor is not required, this theme goes well with the <a href="https://github.com/numixproject/numix-icon-theme">Numix</a> icon theme.

The GTK theme was made by modifying the <a href="https://www.gnome-look.org/p/1316887">Material Black</a> theme

The discord theme was made by modifying the <a href="https://betterdiscord.app/theme/Nocturnal">Nocturnal</a> theme

## Dependencies

Theming
- lxappearance: Can be used to apply the GTK theme
- gnome-tweaks: Can be used to apply the GTK theme
- spicetify-cli: Used to apply the Spotify theme
- betterdiscord: Used to apply the Discord theme
- betterdiscordctl: Used to install betterdiscord
- <a href="https://github.com/enkia/tokyo-night-vscode-theme">VS code Tokyo Night theme</a>

Optional Utils
- st: The terminal we are using in our configs. Requires <a href="https://wiki.archlinux.org/title/st#Patches">patches</a> to get it good. urxvt can be used as an alternative and is themed using the included config files.
- powerline: Status bar for Bash. For example, it shows you what Git repo you are in
- gvim: Contains vim with clipboard support and more
- vim-airline: Status bar for vim
- neofetch, lolcat, cowsay, wisdom-mod: important stuff
- nm-applet: manage your (wireless) connections and has a tray icon
- kalu-kde: Notifies you about Arch news or updates and has a tray icon
- logiops: Used to trigger keyboard combinations using gestures
- blueman: bluetooth tray icon
- gdm-tools-git: If using GDM to login to a user (and select between multiple window managers), use this to set the theme

When using I3 as window manager
- clipit: Clipboard manager
- picom: If you want transparent and rounded borders in I3
- polybar: Status bar
- polybar-themes: Is included in the repo, but should be installed separately as well to get all their dependencies.
- autotiling: Automatically sets in which direction a window will split based on if the parent container is wider or taller
- rofi: Used as a program launcher and power menu
- arandr: Used to manually set monitor properties
- maim: screen capture
- xclip: X selection to clipboard
- bynanz: record screen to gif

When using Sway as window manager
- autotiling: Automatically sets in which direction a window will split based on if the parent container is wider or taller
- kanshi: Used to automatically set monitor properties
- rofi: Used as a program launcher and power menu
- clipman: Clipboard manager
- Waybar: Status bar
- mako: Used for notifications
- slurp: wayland selection to clipboard
- grim: screenshot utility for wayland
- wf-recorder: record screen to video

## File overview and Configuration
### File Index
- .config
    - BetterDiscord: Contains theme files for Discord
    - gtk-3.0: Sets some theme settings
    - i3: Example i3 config with auto starting applications, borders and gaps settings, etc
    - kanshi: Example config for using Kanshi to set your wayland monitors
    - Picom: Example config for enabling transparency and rounded corners when using I3.
    - Polybar: Theme and config for the status bar when using I3 with modules n shit enabled
    - Spicetify: Contains theme for modifying Spotify
    - Sway: Example sway config with auto starting applications, borders and gaps settings, etc
    - Polybar: Theme and config for the status bar when using Sway
    - Wofi: Actually contains an example config and theme for Rofi and Wofi, although we are using Rofi in the configs

- /etc/logid.conf: Optional example configuration for the Logitech MX Master mouse, using gestures to call certain key combinations set in the I3/Sway config
- /usr/share/themes/UltimateBlack-0.1: GTK theme. Will be updated and renamed in the near future.
- .bash_profile: Optional example config. Runs when you login (including via SSH). contains commented code to autostart xorg (and I3)
- .bashrc: Optional example config. Runs whenever a new terminal is opened. Example config with ST and Powerline
- .vimrc:  Optional example vim config
- .Xdefaults: Optional example config. Edit terminal colours and urxvt settings when using Sway as window manager
- .xinitrc: Optional example config. Runs on X server startup and starts I3
- .Xresources: Optional example config. Edit terminal colours and urxvt settings when using I3 as window manager
### Configuration
- GTK theme: If certain colours aren't to your liking, you can `` grep -rl "old_string" . | xargs sed -i 's/old_string/new_string/g' `` to replace specific colour codes quickly. If you go this route you might want to do this to the <a href="https://www.gnome-look.org/p/1316887">source</a>, since the original theme has more different colours.
- Spotify: Manually edit ./config/spicetify/Themes/Base/color.ini
- Discord: There is an <a href="https://limeshark.dev/editor/Nocturnal">online editor</a> to edit all the themes
- Polybar comes bundled with various modules. Check out their <a href="https://github.com/polybar/polybar/wiki">wiki</a> for more info. Also check out the <a href="https://github.com/adi1090x/polybar-themes#readme">readme</a> of polybar-themes if you are using I3.
- Picom can be be configured for more or less transparency or different kinds of blur. The included config uses dual-kawase blur which goes over an image as background

## Installation
### Copying files
All the files go into your home directory, except for:
- /etc/logid.conf
- /usr/share/themes/UltimateBlack-0.1

If using polybar-themes, install it from the original source first to get all their dependencies and fonts. Then you can overwrite their files with the included ones.

### Apply Theme
- GTK: Run lxappearance and/or gnome-tweaks and select the included theme
- Spotify:
    - Run ``spicetify`` once to generate a config file
    - Run ``spicetify backup apply enable-devtool`` to backup the default theme
    - Run ``spicetify config current_theme Base`` to set the current theme to the one we provide
    - Run ``spicetify apply`` and restart spotify
- Discord: After running ``betterdiscordctl install`` go into the newly added Better Discord entry in the settings menu.
- GDM: Run ``gnomeconf2gdm`` (from gdm-tools-git) after applying the GTK theme to set the colour scheme of the login screen
### Notes
- Certain GTK programs, like Gimp and Firefox, might have to be set to follow the system theme from their settings
- A modified version of <a href="https://aur.archlinux.org/packages/console-solarized-git/">console-solarized-git</a> is coming in order to modify the Linux shell colours to match our theme.

## Screenshots

### I3 with Polybar
![Screenshot-2021-07-19T23:10:44](https://user-images.githubusercontent.com/9502378/126227971-2ace7669-2043-40e3-977b-e7becee0808a.png)

### Sway with Waybar
![sway-discord](https://user-images.githubusercontent.com/9502378/126228226-fa59b3f1-2f30-41fb-9f7b-55f9c0d87d49.png)
![sway-spotify](https://user-images.githubusercontent.com/9502378/126228240-548a0cba-04f0-4505-affc-9676b5f99288.png)
![sway-code](https://user-images.githubusercontent.com/9502378/126228243-1cf4af9a-9eb1-4e51-a1ff-160fa44c0fa1.png)
![sway-launcher-explorer](https://user-images.githubusercontent.com/9502378/126228245-4bb93c2f-e4c6-4d1e-9ffc-740860614c81.png)
![sway-urxvt](https://user-images.githubusercontent.com/9502378/126228247-62197505-fb9f-43da-89d2-53c299df1563.png)


