su
sed -i "\$adeb http://http.debian.net/debian jessie main contrib non-free" /etc/fstab
apt-get install -y nvidia-xconfig nvidia-driver
apt-get install -y terminator
apt-get install -y vim git
apt-get install -y Debootstrap
#apt-get install -y xclip

#git config
git config --global push.default simple
git config --global user.name "jdunlap"
git config --global user.email jdunlap@outlook.com

