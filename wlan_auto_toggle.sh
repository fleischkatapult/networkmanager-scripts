#!/bin/sh

# network manager dispatcher script to disable
#  wifi when in Dock and the cable ethernet interface comes up.
#  Installation:
#     * put in /etc/NetworkManager/dispatch.d/
#     * chmod +x the script


# afterwards wlan can be manually enabled again and will stay up until 
#  the next change to the interface

# Original source: http://superuser.com/questions/233448/disable-wlan-if-wired-cable-network-is-available
# TODO add (auto)config for different interfaces

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
