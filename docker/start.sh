#!/bin/bash 
service dbus start;
service avahi-daemon start;
/usr/ifi/ifi-tidal-release/bin/tidal_connect_application \
				--tc-certificate-path "/usr/ifi/ifi-tidal-release/id_certificate/tcon.crt" \
				--netif-for-deviceid eth0 \
				-f "IFI Streamer“ \
				--codec-mpegh true \
				--codec-mqa false \
				--model-name "Streamer" \
				--disable-app-security false \
				--disable-web-security false \
				--enable-mqa-passthrough false \
				--playback-device "Amanero" \
				--clientid "VCjoaRrbaMU005Tk" \
				--log-level 3
