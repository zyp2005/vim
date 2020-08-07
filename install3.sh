useradd -m -G wheel zyp
useradd -m -G wheel test
echo "passwd zyp\n"
passwd zyp
echo "passwd test\n"
passwd test
#pacman -S sudo 
echo " %wheel ALL=(ALL)ALL" >> /etc/sudoers
cd /home/zyp
su zyp
#git clone https://github.com/zyp2005/vim.git
echo "please reboot\n"
