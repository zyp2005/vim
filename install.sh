#!/bin/bash
wifi-menu
ping baidu.com 
timedatectl set-ntp true
fdisk /dev/sd<+>
mkfs.ext4 /dev/sdc1
mount /dev/sd<+><num> /mnt
cp /run/archiso/bootmnt/mirrorlist /etc/pacman.d/
pacstrap /mnt base linux linux-firmware base-devel
genfstab -U /mnt >> /mnt/etc/fstab
cp /run/archiso/bootmnt/install2.sh /mnt
cp /run/archiso/bootmnt/pacman.conf /mnt/etc
#cp /run/archiso/bootmnt/install2.sh /
arch-chroot /mnt ./install2.sh
umount /mnt /dev/sdc1


