#!/bin/sh

# network manager dispatcher script to disable
#  wifi when in Dock.
#  Installation:
#     * put in /etc/NetworkManager/dispatch.d/
#     * chmod +x he script

# Original source: http://superuser.com/questions/233448/disable-wlan-if-wired-cable-network-is-available
if [ "$1" = "eth0" ]; then
    case "$2" in
        up)
            nmcli radio wifi off
            ;;
        down)
            nmcli radio wifi on
            ;;
    esac
fi
