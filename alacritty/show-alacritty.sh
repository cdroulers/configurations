#/bin/sh
# Utility script to start alacritty or show the existing window.
# Useful to bind global shortcut.
# Requires `wmctrl` installed on the PATH

found=`wmctrl -l | grep "Alacritty"`
if [[ -z $found ]]; then
	# Currently doesn't work in Linux, app doesn't start.
	alacritty
else
	wmctrl -xa "Alacritty"
fi

