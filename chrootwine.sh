sudo apt-get install -y Debootstrap
sudo apt-get install -y schroot
sudo mkdir -p /var/chroot/jessie386
#sudo chmod u+rw /var/chroot/jessie386
sudo debootstrap --variant=buildd --arch i386 jessie /var/chroot/jessie386/
sudo cp /etc/resolv.conf /var/chroot/jessie386/etc/resolv.conf
sudo cp /etc/apt/sources.list /var/chroot/jessie386/etc/apt/

sudo sed -i "\$a# ia32 chroot" /etc/fstab
#sudo sed -i "\$a/home           /var/chroot/jessie386/home none   bind            0       0" /etc/fstab
sudo sed -i "\$a/tmp            /var/chroot/jessie386/tmp  none   bind            0       0" /ect/fstab
sudo sed -i "\$a/proc           /var/chroot/jessie386/proc proc   defaults        0       0" /etc/fstab
sudo sed -i "\$a/dev            /var/chroot/jessie386/dev  none   bind            0       0" /etc/fstab
sudo mount -o bind /proc /var/chroot/jessie386/proc
sudo mount --bind /sys /var/chroot/jessie386/sys 
sudo mount --bind /tmp /var/chroot/jessie386/tmp
sudo mount --bind /dev /var/chroot/jessie386/dev
sudo mount --bind /dev/pts /var/chroot/jessie386/dev/pts

cudo cp chrootwine_remote.sh /var/chroot/jessie386/root/
sudo chroot /var/chroot/jessie386/

#addusr jdunlap
#usermod -a -G sudo jdunlap
#su jdunlap
