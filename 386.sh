# Create the Pulseaudio Socket
if [ ! -e /tmp/.netflix-pulse-socket ];
then
    echo -e "${lpurp}Adding Pulseaudio socket at /tmp/.pulse-socket${NC}" 
    pactl load-module module-native-protocol-unix auth-anonymous=1 socket=/tmp/.netflix-pulse-socket
fi

#sudo chroot /var/chroot/jessie386
schroot -p -c jessie386 /bin/bash
