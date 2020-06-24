sudo pacman -S xf86-video-intel xorg xorg-xinit wqy-microhei i3 feh compton \
	polybar ttf-font-awesome sakura clang fcitx-im fcitx-configtool \
	chromium fcitx-googlepinyin rofi curl neovim alsa alsa-utils \
	nodejs npm fzf 
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
yay -S ls powerline-fonts-git
echo "done"


