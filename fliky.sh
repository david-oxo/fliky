#!/bin/bash

timeToWait=$(( 30 * 60 ))
re='^[0-9]+$'
#re='^[0-9]+([.][0-9]+)?$'

if [[ $1 =~ $re ]] ; then
    if [ $(( $1 + 0 )) -ge 1 ] && [ $(( $1 + 0 )) -le 120 ] ; then
        timeToWait=$(( $1 * 60 ))
    fi
fi
notify-send -i face-glasses "Starting Flicky.."
while true ; do
    if [ -f /usr/bin/notify-send ] ; then
        sleep $timeToWait
        notify-send -i clock "Still focused??"
    fi
done
