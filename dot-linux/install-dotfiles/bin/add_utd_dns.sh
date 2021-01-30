#!/bin/bash

dnsservers="10.248.15.61 10.100.128.15"

OS="UBUNTU"

if [ $OS -eq "UBUNTU" ]; then
   ubuntu_dns
elif [ $OS -eq "OSX" ]; then
    mac_dns
fi

function ubuntu_dns {
    printf "[TODO] need implementation."
}

function mac_dns {
    dnscmd="sudo /usr/sbin/networksetup -setdnsservers "

    while read -r line; do
        sname=$(echo "$line" | awk -F  "(, )|(: )|[)]" '{print $2}')
        sdev=$(echo "$line" | awk -F  "(, )|(: )|[)]" '{print $4}')
        # echo "Current service: $sname, $sdev, $currentservice"
        if [ -n "$sdev" ]; then
            ifout="$(ifconfig "$sdev" 2>/dev/null)"
            echo "$ifout" | grep 'status: active' > /dev/null 2>&1
            rc="$?"
            if [ "$rc" -eq 0 ]; then
                currentservice="$sname"
                currentdevice="$sdev"
                # currentmac=$(echo "$ifout" | awk '/ether/{print $2}')

                # may have multiple active devices, so echo it here
                echo "### Currently active network service (device)"
                echo "$currentservice, $currentdevice" # , $currentmac
                echo "Adding DNS servers $dnsservers"
                echo "$dnscmd \"$currentservice\" $dnsservers"
                rc=$(echo "$dnscmd \"$currentservice\" $dnsservers" |/bin/sh)
            fi
        fi
    done <<< "$(networksetup -listnetworkserviceorder | grep 'Hardware Port')"

    if [ -z "$currentservice" ]; then
        >&2 echo "Could not find current service"
        exit 1
    fi
}
