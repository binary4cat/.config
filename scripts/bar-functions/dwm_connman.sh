#!/bin/sh

# A dwm_bar function to show the current network connection/SSID, Wifi Strength, private IP using Connmanctl.
# procrastimax <heykeroth.dev@gmail.com>
# GNU GPLv3

# Dependencies: connman

bit_format(){
    echo "before $T1 $R1"
    if [ -z "$T1" ]; then
        T1=0
    fi
    if [ -z "$R1" ]; then
        R1=0
    fi

    R2=`cat /sys/class/net/wlan0/statistics/rx_bytes`
    T2=`cat /sys/class/net/wlan0/statistics/tx_bytes`
    TBPS=`expr $T2 - $T1`
    RBPS=`expr $R2 - $R1`
    TKBPS=`expr $TBPS / 1024`
    RKBPS=`expr $RBPS / 1024`
    # printf "In: %12i KB/s | Out: %12i KB/s | Total: %12i KB/s\n" $(($INSPEED/1024)) $(($OUTSPEED/1024)) $((($INSPEED+$OUTSPEED)/1024)) ;
    printf "In: %i KB/s | Out: %i KB/s" $RKBPS $TKBPS

    R1=$R2
    T1=$T2
    echo "$R1" "$T1"
}

dwm_connman () {
    printf "%s" "$SEP1"
    if [ "$IDENTIFIER" = "unicode" ]; then
        printf " "
    else
        printf "NET "
    fi

    # get the connmanctl service name
    # this is a UID starting with 'vpn_', 'wifi_', or 'ethernet_', we dont care for the vpn one
    # if the servicename string is empty, there is no online connection
    SERVICENAME=$(connmanctl services | grep -E "^\*AO|^\*AR|^\*A|^\*O" | grep -Eo 'wifi_.*|ethernet_.*')

    if [ ! "$SERVICENAME" ]; then
        printf "OFFLINE"
        printf "%s\n" "$SEP2"
        return
    else
        STRENGTH=$(connmanctl services "$SERVICENAME" | sed -n -e 's/Strength =//p' | tr -d ' ')
        CONNAME=$(connmanctl services "$SERVICENAME" | sed -n -e 's/Name =//p' | tr -d ' ')
        IP=$(connmanctl services "$SERVICENAME" | grep 'IPv4 =' | awk '{print $5}' | sed -n -e 's/Address=//p' | tr -d ',')
    fi

    # if STRENGTH is empty, we have a wired connection
    if [ "$STRENGTH" ]; then
        # printf "%s %s %s%%" "$IP" "$CONNAME" "$STRENGTH"
        printf "%s %s%%" "$CONNAME" "$STRENGTH"
        # printf "%s" "$(bit_format)"
    else
        # printf "%s %s" "$IP" "$CONNAME"
        printf "%s" "$CONNAME"
    fi

    printf "%s\n" "$SEP2"
}

dwm_connman
