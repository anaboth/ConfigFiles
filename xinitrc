#!/bin/sh
#sxhkd &
feh --bg-fill ~/Pictures/eucliwood.jpg
xset s off
xrdb ~/.Xresources

xinput set-prop "ETPS/2 Elantech Touchpad" "libinput Tapping Enabled" 1
xinput set-prop "ETPS/2 Elantech Touchpad" "libinput Natural Scrolling Enabled" 1
 
 #$HOME/setroot.sh
 session=${1:-i3}
 case $session in
     awesome           ) exec awesome;;
     bspwm             ) exec bspwm;;
     catwm             ) exec catwm;;
     cinnamon          ) exec cinnamon-session;;
     dwm               ) exec dwm;;
     enlightenment     ) exec enlightenment_start;;
     ede               ) exec startede;;
     fluxbox           ) exec startfluxbox;;
     gnome             ) exec gnome-session;;
     gnome-classic     ) exec gnome-session --session=gnome-classic;;
    i3|i3wm           ) exec i3;;
    icewm             ) exec icewm-session;;
    jwm               ) exec jwm;;
    kde               ) exec startkde;;
    mate              ) exec mate-session;;
    monster|monsterwm ) exec monsterwm;;
    notion            ) exec notion;;
    openbox           ) exec openbox-session;;
    unity             ) exec unity;;
    xfce|xfce4        ) exec startxfce4;;
    xmonad            ) exec xmonad;;
    *) exec $1;;
esac
