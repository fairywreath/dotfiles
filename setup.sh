wd=$(pwd)

# tmux
cp .tmux.conf $HOME/.tmux.conf
tmux source-file $HOME/.tmux.conf
# tmux source-file $HOME/.tmux-themepack/powerline/double/purple.tmuxtheme # yucks...

# symlink...
cp vim/colors/* ~/.vim/colors/
cp .vimrc $HOME/.vimrc
