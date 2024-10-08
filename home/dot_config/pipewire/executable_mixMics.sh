#!/bin/bash

regexp_micOne="USB_PnP_Audio_Device"
regexp_micTwo="SteelSeries_Arctis_Pro_Wireless.*mono-chat\$"

echo "stop any previously running module"
pactl unload-module module-remap-source
pactl unload-module module-loopback
pactl unload-module module-null-sink

sleep 1
default_sink=$(pactl get-default-sink)
sourcesJson=$(pactl --format=json list sources short)
micOne=$(echo "${sourcesJson}" | jq ".[] | select(.name|test(\"${regexp_micOne}\")) | .name")
micTwo=$(echo "${sourcesJson}" | jq ".[] | select(.name|test(\"${regexp_micTwo}\")) | .name")

if [[ -z "$micOne" ]]; then
    echo "micOne empty"
    pactl unload-module module-remap-source
    pactl unload-module module-loopback
    pactl unload-module module-null-sink
    exit 1
fi
if [[ -z "$micTwo" ]]; then
    echo "micTwo empty"
    pactl unload-module module-remap-source
    pactl unload-module module-loopback
    pactl unload-module module-null-sink
    exit 1
fi

echo "create virtual microphone monitor"
pactl load-module module-null-sink \
    sink_name=mix-for-virtual-mic \
    sink_properties=device.description=Mix-for-Virtual-Microphone \
    1>/dev/null
sleep 1
echo "add microphone ${micOne} to monitor"
pactl load-module module-loopback \
    source="${micOne}" \
    sink=mix-for-virtual-mic \
    latency_msec=20 \
    1>/dev/null
sleep 1
echo "add microphone ${micTwo} to monitor"
pactl load-module module-loopback \
    source="${micTwo}" \
    sink=mix-for-virtual-mic \
    latency_msec=20 \
    1>/dev/null

sleep 2
echo "create virtual microphone"
pactl load-module module-remap-source \
   master=mix-for-virtual-mic.monitor \
   source_properties=device.description="Mixed-Microphone"

# echo "set virtual microphone as default"
# pactl set-default-source mix-for-virtual-mic.monitor.remapped

echo "set default output"
pactl set-default-sink ${default_sink}

sleep 3
echo "set noise canceling source to mix-for-virtual-mic.monitor"
sourceOutputId=$(pactl --format=json list source-outputs | jq '.[] | select(.properties."node.name" == "capture.rnnoise_source") | .index')
pactl move-source-output ${sourceOutputId} "mix-for-virtual-mic.monitor.remapped"
