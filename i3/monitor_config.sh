#!/bin/bash
monitors=$(xrandr | grep -sw 'connected' | awk '{print $1}')

for monitor in ${monitors}
do
  if [[ ${monitor} == *"HDMI"* ]]; then
    echo "External display: "${monitor}
    # when exist external monitor, and only use the monitor.
    xrandr --output eDP-1 --off --output HDMI-1 --primary --mode 3840x2160 --pos 0x0 --rotate normal --output DP-1 --off --output HDMI-2 --off
  fi
done
