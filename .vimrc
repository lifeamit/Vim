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

syntax enable


"colorscheme 256-jungle
 color 256-jungle
colorscheme jellybeans

set number
set shiftwidth=2
set tabstop=2
set hlsearch
set incsearch
set ignorecase
set smartcase
set backspace=2    " backspace should delete in insert mode
set expandtab
set autoindent
set smartindent
set relativenumber
set showbreak=↪    " Show ↪  as line break character
set noswapfile     " no swp file
set laststatus=2   " Always show status line
set textwidth=80   " Show a vertical bar on 80th column
set colorcolumn=+1

let mapleader=","

" All the key mappings here
map <S-C-J> 20j
map <C-S-k> 20k
" c-] maps to esc. So avoid mapping that
map <C-]> gT
map <C-\> gt
" nnoremap <S-C-n> :NERDTreeToggle<CR>
" nnoremap <C-m> :NERDTreeFind<CR>
nnoremap <leader>n :NERDTreeToggle<CR>
nnoremap <leader>m :NERDTreeFind<CR>
nnoremap <C-o> :CtrlPFunky<CR>
map <leader>v :tabnew ~/.vimrc<CR>
map <leader>= :Tabularize /=<CR>
map <leader>; :Tabularize /:<CR>

" nnoremap v{ vi{<CR>


" All plugins related modifications here
let g:ctrlp_extensions                 = ['funky']       "  to open methods list on ctrl+o
let g:neocomplcache_enable_at_startup  = 1               "  enable autocomplete
let g:neocomplcache_enable_auto_select = 1               "  by default enable first autocomplete suggest
let g:SuperTabDefaultCompletionType = '<c-n>'            "  default navigation in auto complete list from top to bottom (on tab press)
let g:syntastic_error_symbol           = "✗"
let g:syntastic_warning_symbol         = "⚠"
let g:ctrlp_prompt_mappings            = {
  \ 'AcceptSelection("e")' : ['<c-t>', '<2-LeftMouse>'],
  \ 'AcceptSelection("t")' : ['<cr>'],
\ }


" Productivity tips and tricks
autocmd BufWritePre * :%s/\s\+$//e        " Remove trailing spaces on save
augroup reload_vimrc " {   Auto vimrc load upon save
  autocmd!
  autocmd BufWritePost $MYVIMRC source $MYVIMRC
augroup END " }


" Change the status bar
set statusline=                                                    " clear the statusline for when vimrc is reloaded
set statusline+=%-3.3n\                                            " buffer number
set statusline+=%f\                                                " file name
set statusline+=%h%m%r%w                                           " flags
set statusline+=[%{strlen(&ft)?&ft:'none'},                        " filetype
set statusline+=%{strlen(&fenc)?&fenc:&enc},                       " encoding
set statusline+=%{&fileformat}]                                    " file format
set statusline+=%=                                                 " right align
set statusline+=%{synIDattr(synID(line('.'),col('.'),1),'name')}\  " highlight
set statusline+=%b,0x%-8B\                                         " current char
set statusline+=%-14.(%l,%c%V%)\ %<%P                              " offset
set wildignore+=*/tmp/*,*.so,*.swp,*.zip,*node_modules*



" Things yet to be fixed and put at right place
let g:syntastic_javascript_checkers    = ['jshint'] "  default js quality checker
" replace above linter with jshint
let g:syntastic_check_on_open          = 1          "  check syntax on file load
" let g:syntastic_javascript_jshint_conf = $HOME . '/.jshintrc'
" let g:syntastic_javascript_jshint_exec='/home/amitagwl/mixtape-creator/node_modules/.bin/jshint'





