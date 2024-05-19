set runtimepath^=~/.vim runtimepath+=~/.vim/after
source~/.vimrc
let &packpath =&runtimepath
set termguicolors
set nocompatible
set hidden
set encoding=utf-8
set clipboard+=unnamedplus 
set clipboard+=unnamedplus
call plug#begin()
Plug 'nvim-treesitter/nvim-treesitter', {'do': ':TSUpdate'}
Plug 'nvim-tree/nvim-web-devicons'
Plug 'nvim-tree/nvim-tree.lua'
Plug 'akinsho/bufferline.nvim', { 'tag': '*' }
Plug 'catppuccin/nvim', { 'as': 'catppuccin' }
Plug 'folke/noice.nvim'
Plug 'MunifTanjim/nui.nvim'
Plug 'nvim-lualine/lualine.nvim'
Plug 'nvim-neo-tree/neo-tree.nvim'
Plug 'nvim-lua/plenary.nvim'
Plug 'tpope/vim-surround' 
call plug#end()
" catppucin/nvim
colorscheme catppuccin-frappe " catppuccin-latte, catppuccin-frappe, catppuccin-macchiato, catppuccin-mocha

" folke/noice.nvim
lua require("noice").setup()

" nvim-lualine/lualine.nvim
lua << END
require('lualine').setup {
	options = {
		theme = 'dracula'
	}
}

END

" akinsho/bufferline
set termguicolors
lua << EOF
require("bufferline").setup{}
EOF
