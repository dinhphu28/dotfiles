call plug#begin('~/.config/nvim/bundle')

Plug 'vim-airline/vim-airline' " Status bar
" Plug 'vim-airline/vim-airline-themes'
Plug 'preservim/nerdtree' " NerdTree
Plug 'tpope/vim-commentary' " For Commenting gcc & gc
Plug 'tpope/vim-surround' " Surrounding ysw)
Plug 'ap/vim-css-color' " CSS Color Preview
Plug 'rafi/awesome-vim-colorschemes' " Retro Scheme
Plug 'neoclide/coc.nvim'  " Auto Completion
Plug 'ryanoasis/vim-devicons' " Developer Icons
Plug 'tc50cal/vim-terminal' " Vim Terminal
Plug 'preservim/tagbar' " Tagbar for code navigation
Plug 'terryma/vim-multiple-cursors' " CTRL + N for multiple cursors

Plug 'Xuyuanp/nerdtree-git-plugin'
Plug 'tiagofumo/vim-nerdtree-syntax-highlight'
Plug 'dracula/vim',{'as':'dracula'}
Plug 'ryanoasis/vim-devicons'

call plug#end()
