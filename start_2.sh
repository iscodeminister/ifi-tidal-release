#!/bin/bash

export LD_LIBRARY_PATH=$PWD/lib
DEVICE="Combo384 Amanero: USB Audio (hw:0,0)"
./bin/tidalconnect \
	--tc-certificate-path "./id_certificate/tcon.crt" \
	--netif-for-deviceid eth0 \
	-f "Connect Streamer" \
	--codec-mpegh true \
	--codec-mqa false \
	--model-name "iFi Streamer" \
	--disable-app-security false \
	--disable-web-security false \
	--enable-mqa-passthrough false \
	--playback-device "$DEVICE" \
    --clientid "VCjoaRrbaMU005Tk" \
	--log-level 1 