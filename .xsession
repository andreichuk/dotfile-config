# use utf-8 everywhere
export LANG=en_US.UTF-8

# specify location of kshrc
export ENV=$HOME/.kshrc

# load x resources file
xrdb -merge $HOME/.Xresources

# set the background color
xsetroot -solid dimgray

# locking the display after a period of inactivity
xidle &

# workaround for xclock bug that ignores the font selection ehrn utf-8 is enabled
LANG= xclock -strftime "%a %e %b %Y %H:%M" &

# for Thinkpad's trackpoint: enables scrolling by dragging with the middle button
xinput set-prop "/dev/wsmouse" "WS Pointer Wheel Emulation" 1
xinput set-prop "/dev/wsmouse" "WS Pointer Wheel Emulation Button" 2
xinput set-prop "/dev/wsmouse" "WS Pointer Wheel Emulation Axes" 6 7 4 5

# start cwm
exec cwm
