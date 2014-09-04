#! /bin/bash

echo -e "${lpurp}Checking for Pulseaudio${NC}"
if [ ! -e /tmp/.netflix-pulse-socket ];
then
echo -e "${red}[ERROR] * No Pulseaudio socket transfered! Please connect container with \"-v /tmp/.netflix-pulse-socket:/tmp/.netflix-pulse-socket\"${NC}"
echo -e "${red} You can create a Pulseaudio socket by running:${NC}"
echo
echo -e "${yellow}pactl load-module module-native-protocol-unix auth-anonymous=1 socket=/tmp/.netflix-pulse-socket${NC}"
echo
exit 1
fi

rm ~/.wine-pipelight/drive_c/users/Public/Application\ Data/Microsoft/PlayReady/mspr.hds 

WINEPREFIX=~/.wine-pipelight WINE=/opt/wine-compholio/bin/wine WINEARCH=win32
#~/.wine-pipelight/winetricks sound=alsa

PULSE_SERVER=/tmp/.netflix-pulse-socket PIPELIGHT_GPUACCELERATION=0 iceweasel -no-remote http://www.netflix.com 2>&1 >> /dev/null
