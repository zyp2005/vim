#!/bin/bash
ln -sf /usr/share/zoneinfo/Asia/Shanghai /etc/localtime
hwclock --systohc
pacman -Syu
pacman -S vim dhcpcd dialog wpa_supplicant ntfs-3g networkmanager netctl \
	intel-ucode grub git 
echo "zh_CN.UTF-8 UTF-8" >> /etc/locale.gen
echo "zh_TW.UTF-8 UTF-8" >> /etc/locale.gen
echo "zh_HK.UTF-8 UTF-8" >> /etc/locale.gen
echo "en_US.UTF-8 UTF-8" >> /etc/locale.gen
locale-gen
touch /etc/locale.conf
echo "LANG=en_US.UTF-8" >> /etc/locale.conf
touch /etc/hostname
echo "zyp-a" >> /etc/hostname
touch /etc/hosts
echo "127.0.0.1		localhost" >> /etc/hosts
echo "::1		localhost" >> /etc/hosts
echo "127.0.1.1	   	zyp-a.localdomain	zyp-a" >> /etc/hosts
passwd
grub-install --target=i386-pc /dev/sdc
grub-mkconfig -o /boot/grub/grub.cfg
systemctl enable NetworkManager


