#!/bin/bash

# deploy files
cp ${PWD}/ifi-streamer-tidal-connect.service /lib/systemd/system/
cp ${PWD}/asound.conf /etc/asound.conf