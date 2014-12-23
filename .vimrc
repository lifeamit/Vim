set nocompatible  " be iMproved, required
filetype off      " required

set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

" let Vundle manage Vundle, required
Plugin 'gmarik/Vundle.vim'

" My Bundles
Plugin 'kien/ctrlp.vim'
Plugin 'scrooloose/nerdtree'
Plugin 'tpope/vim-fugitive'
Plugin 'scrooloose/syntastic'
Plugin 'tacahiroy/ctrlp-funky'
Plugin 'tpope/vim-abolish'
Plugin 'flazz/vim-colorschemes'
Plugin 'scrooloose/nerdcommenter'
Plugin 'Shougo/neocomplcache.vim'
Plugin 'godlygeek/tabular'
Plugin 'altercation/vim-colors-solarized'
Plugin 'kien/tabman.vim'  " Check which files in which tab
Plugin 'ervandew/supertab'  " Tab based auto completion
Plugin 'tpope/vim-surround'
Plugin 'groenewege/vim-less'
" Plugin 'jelera/vim-javascript-syntax'
Plugin 'pangloss/vim-javascript'
Plugin 'nathanaelkane/vim-indent-guides'
Plugin 'Raimondi/delimitMate'
Plugin 'terryma/vim-multiple-cursors'
" Plugin 'grigio/vim-sublime'
" Plugin 'marijnh/tern_for_vim'
" Plugin 'Valloric/YouCompleteMe'



call vundle#end()            " required
filetype plugin indent on    " required





