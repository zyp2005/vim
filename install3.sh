useradd -m -G wheel zyp
passwd zyp
pacman -S sudo 
echo " %wheel ALL=(ALL)ALL" >> /etc/sudoers
reboot
