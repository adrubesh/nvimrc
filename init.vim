set autoindent
set incsearch
syntax enable
set hlsearch
filetype plugin indent on
colorscheme alduin

tnoremap <Esc> <C-\><C-n>

if empty(glob("${XDG_DATA_HOME:-$HOME/.local/share}/nvim/site/autoload/plug.vim"))
	silent !curl -fLo ~/.local/share/nvim/site/autoload/plug.vim --create-dirs
				\ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
	autocmd VimEnter * PlugInstall --sync | source $MYVIMRC
endif

call plug#begin(stdpath('data') . 'plugged')
	Plug 'equalsraf/neovim-gui-shim'
	Plug 'sbdchd/neoformat'
call plug#end()

