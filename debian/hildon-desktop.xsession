#!/bin/sh

export HILDON_DESKTOP_APPS_PRESTART=auto
export CLUTTER_BACKEND=x11

# Load potentially necessary variables (usuallly device-specific)
if [ -e "/etc/hildon-desktop.env" ]; then
	. /etc/hildon-desktop.env
fi

# sadly, we have to use dsmetool here, so we cant respawn session..
/usr/sbin/dsmetool -c 3 -T 180 -m -17 -f /usr/bin/hildon-desktop

