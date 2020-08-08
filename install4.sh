sudo pacman -S xf86-video-intel xorg xorg-xinit wqy-microhei i3 feh compton \
	polybar ttf-font-awesome sakura clang  \
	chromium  rofi curl  alsa alsa-utils \
	nodejs npm fzf yay ranger
mkdir .config
mkdir .config/i3 .config/polybar .config/sakura
cp vim/.xinitrc .xinitrc
cp vim/config/i3/config .config/i3/
cp vim/config/polybar/config   .config/polybar/
cp vim/config/polybar/launch.sh   .config/polybar/
cp vim/config/sakura/sakura.conf  .config/sakura/
chmod +x ~/.config/polybar/launch.sh
echo "export LANG=zh_CN.UTF-8" >> .bashrc
echo "export LC_ALL=zh_CN.UTF-8" >> .bashrc
echo "export INPUT_METHOD=\"fcitx\"" >> .bashrc
echo "export GTK_IM_MODULE=\"fcitx\"" >> .bashrc
echo "export QT_IM_MODULE=\"fcitx\"" >> .bashrc
echo "export XMODIFIERS=\"@im=fcitx\"" >> .bashrc
echo "alias w3m='w3m -o auto_image=FLASE -o ext_image_viewer=1'" >> .bashrc
#curl -fLo ~/.vim/autoload/plug.vim --create-dirs \
#    https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
#cp vim/vimrc .vim/
mkdir picture
cp vim/20120806133222_2R2eN.jpeg picture
yay -S alsa-firmware alsa-tools pulseaudio-alsa
	lf powerline-fonts-git mate-media \
	wps-office-cn cups  ttf-wps-fonts wps-office-mime-cn wps-office-mui-zh-cn \
	adobe-source-code-pro-fonts adobe-source-han-mono-cn-fonts \
	adobe-source-han-sans-cn-fonts  adobe-source-serif-pro-fonts \
	cmake ctags wget elinks gdb go lazygit ccls lua mate-volume-control neofetch \
	neovim-nightly neovim-remote nerd-fonts-source-code-pro npm \
	ruby w3m you-get yarn cargo qq-linux bat
sudo cp -r vim/winfonts /usr/share/fonts/winfonts/
sudo cp  vim/fonts.conf  /etc/fonts/fonts.conf
cd /usr/share/fonts/winfonts/
sudo mkfontscale
sudo mkfontdir
sudo fc-cache -fv
sudo source /etc/profile
cd
echo "done"


