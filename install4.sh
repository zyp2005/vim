sudo pacman -S xf86-video-intel xorg xorg-xinit wqy-microhei i3 feh compton \
	polybar ttf-font-awesome sakura clang fcitx-im fcitx-configtool \
	chromium fcitx-googlepinyin rofi curl  alsa alsa-utils \
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
echo "export GTK_IM_MODULE=\"fcitx\"" >> .bashrc
echo "export QT_IM_MODULE=\"fcitx\"" >> .bashrc
echo "export XMODIFIERS=\"@im=fcitx\"" >> .bashrc
curl -fLo ~/.vim/autoload/plug.vim --create-dirs \
    https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
cp vim/vimrc .vim/
mkdir picture
cp vim/20120806133222_2R2eN.jpeg picture
sudo pacman -S alsa-firmware alsa-tools pulseaudio-alsa
yay -S lf powerline-fonts-git
yay -S mate-media
yay -S wps-office-cn cups  ttf-wps-fonts wps-office-mime-cn wps-office-mui-zh-cn
yay -S adobe-source-code-pro-fonts adobe-source-han-mono-cn-fonts
adobe-source-han-sans-cn-fonts adobe-source-han-sans-tw-fonts adobe-source-serif-pro-fonts 
cmake ctags wget elinks gdb go lazygit ccls lua mate-volume-control neofetch 
neovim-nightly neovim-remote nerd-fonts-source-code-pro npm
ruby w3m you-get yarn 
echo "done"


