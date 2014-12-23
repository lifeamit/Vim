mv ~/.vim ~/.vim_bkuptoday
mv ~/.vimrc ~/.vimrc_bkuptoday
mkdir -p ~/.vim
mkdir -p ~/.vim/bundle
git clone https://github.com/gmarik/Vundle.vim.git ~/.vim/bundle/Vundle.vim
cp .vimrc ~
vim +PluginInstall +qall


