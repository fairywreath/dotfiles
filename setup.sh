wd=$(pwd)

# tmux
# cp .tmux.conf $HOME/.tmux.conf
ln -s -f $wd/tmux.conf $HOME/.tmux.conf
# tmux source-file $HOME/.tmux.conf
# tmux source-file $HOME/.tmux-themepack/powerline/double/purple.tmuxtheme # yucks...

# vim
ln -s -f $wd/vim/colors $HOME/.vim/colors
ln -s -f $wd/vimrc $HOME/.vimrc

# nvim
ln -s -f $wd/nvim $HOME/.config/nvim

