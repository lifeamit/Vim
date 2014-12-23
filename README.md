Vim
===

Prerequisites
===
Vim >=7.4

Install
===
```
git clone git@github.com:lifeamit/Vim.git
cd Vim
chmod +x bin/install.sh && ./bin/install.sh
```

Install Vim 7.4
===
```
wget ftp://ftp.vim.org/pub/vim/unix/vim-7.4.tar.bz2
tar jxf vim-7.4.tar.bz2
cd vim74/
./configure
make
sudo make install
```


Update Plugins
===
:PluginUpdate

Details
===
- Uses Vundle for plugin management
