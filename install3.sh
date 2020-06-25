useradd -m -G wheel zyp
passwd zyp
#pacman -S sudo 
echo " %wheel ALL=(ALL)ALL" >> /etc/sudoers
cd /home/zyp
su zyp
#git clone https://github.com/zyp2005/vim
reboot
