#!/usr/bin/env bash

INSTALL_DIR=/opt/ifi-tidal-connect

# update package list and install dependencies
apt update
apt install -y multiarch-support libavformat57 git libportaudio2* libflac++6v5* libavahi-common3 libavahi-client3 alsa-utils
apt install -y -q tmux

# create working folder
mkdir $INSTALL_DIR
cd $INSTALL_DIR

# download and install other needed dependencies
apt install -y ./required_libs_fixedVer/libssl1.0.0_1.0.1t-1+deb8u12_armhf.deb
#apt install -y ./required_libs_fixedVer/libcurl3_7.38.0-4+deb8u16_armhf.deb --allow-downgrades
apt install -y ./required_libs_fixedVer/libcurl3_7.52.1-5+deb9u16_armhf --allow-downgrades

# correct permissions
chmod +x $INSTALL_DIR/play
chmod +x $INSTALL_DIR/bin/*
chmod +x $INSTALL_DIR/pa_devs/run.sh
chmod +x $INSTALL_DIR/list-devices.sh
chmod +x $INSTALL_DIR/re_deploy-service

# deploy files
cp $INSTALL_DIR/ifi-streamer-tidal-connect.service /lib/systemd/system/

# start service and check on status
systemctl daemon-reload
#systemctl start ifi-streamer-tidal-connect.service 
#systemctl status ifi-streamer-tidal-connect.service