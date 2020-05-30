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
echo -e "# Github\n \
192.30.253.113 github.com\n \
151.101.184.133 assets-cdn.github.com\n \
185.199.108.153 documentcloud.github.com\n \
192.30.253.118 gist.github.com\n \
185.199.108.153 help.github.com\n \
192.30.253.120 nodeload.github.com\n \
#151.101.184.133 raw.github.com\n \
18.204.240.114 status.github.com\n \
192.30.253.166 training.github.com\n \
192.30.253.112 www.github.com\n \
151.101.185.194 github.global.ssl.fastly.net\n \
151.101.184.133 avatars0.githubusercontent.com\n \
151.101.184.133 avatars1.githubusercontent.com" >> /etc/hosts
passwd
grub-install --target=i386-pc /dev/sdc
grub-mkconfig -o /boot/grub/grub.cfg
systemctl enable NetworkManager


