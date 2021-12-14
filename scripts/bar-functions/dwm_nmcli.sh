#!/bin/sh

# A dwm_bar function to show the current network connection/SSID, Wifi Strength, private IP using Connmanctl.
# procrastimax <heykeroth.dev@gmail.com>
# GNU GPLv3

# Dependencies: networkmanage

dwm_nmcli () {
    printf "%s" "$SEP1"
    if [ "$IDENTIFIER" = "unicode" ]; then
        printf " "
    else
        printf "NET "
    fi

    read SERVICENAME SIGNAL <<< $(nmcli -t -f active,ssid,signal dev wifi | egrep '^yes' | awk -F: '{print $2,$3}') 

    if [ ! "$SERVICENAME" ]; then
        printf "OFFLINE"
        printf "%s\n" "$SEP2"
        return
    fi

    # if STRENGTH is empty, we have a wired connection
    if [ "$SIGNAL" ]; then
        printf "%s %s%%" "$SERVICENAME" "$SIGNAL"
    else
        printf "%s" "$SERVICENAME"
    fi

    printf "%s\n" "$SEP2"
}

dwm_nmcli
