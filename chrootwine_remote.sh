# dont forget to add domain "debian" to chroot /etc/hosts for localhost
apt-get update
apt-get install -y wget
apt-get install -y alsa-base
apt-get install -y pciutils

#playonlinux
wget -q "http://deb.playonlinux.com/public.gpg" -O- | apt-key add -
wget http://deb.playonlinux.com/playonlinux_wheezy.list -O /etc/apt/sources.list.d/playonlinux.list
apt-get update
apt-get install playonlinux

#apt-get --no-install-recommends install wget curl wine1.7
apt-get --no-install-recommends install wget curl
apt-get update
apt-get install -y netcat wine wine32
apt-get install -y winetricks
apt-get install -y libasound2-plugins
apt-get install -y libgl1-nvidia-glx
apt-get install -y libgl1-nvidia-glx-i386
apt-get install -y libosmesa6
winetricks -q vcrun2005 ie8 wininet d3dx9 corefonts adobeair

# http://ubuntuforums.org/showthread.php?t=1307763
# opengl32 - /etc/group video:x:44:jdunlap
