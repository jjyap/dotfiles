" Use existing vim config
set runtimepath^=~/.vim runtimepath+=~/.vim/after
let &packpath=&runtimepath
" source ~/.vimrc

" Plugins
call plug#begin()
Plug 'hashivim/vim-terraform'
Plug 'yorinasub17/vim-terragrunt'

Plug 'preservim/nerdtree'

Plug 'nvim-treesitter/nvim-treesitter', {'do': ':TSUpdate'}
" Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'neovim/nvim-lspconfig'

" Plug 'crusoexia/vim-monokai'
call plug#end()

" Treesitter
:lua <<EOF
require'nvim-treesitter.configs'.setup {
  ensure_installed = "maintained",
  highlight = {
	  enable = true,              
  },
}
EOF
" require "nvim-treesitter.highlight"
" vim.treesitter.highlighter.hl_map.error = nil

" set termguicolors
" The configuration options should be placed before `colorscheme sonokai`.
"let g:sonokai_style = 'default'
"let g:sonokai_enable_italic = 1
"let g:sonokai_disable_italic_comment = 1
"colorscheme sonokai

colorscheme monokai
" colorscheme monokai_pro
" colorscheme monokai_soda

" Basic Options
syntax on		" filetype detection by synxtax

" Search settings
set hlsearch
set smartcase
set ignorecase
set incsearch

" Tab settings
set expandtab
set tabstop=4     " tab width in spaces
set softtabstop=4 " soft tab width in spaces
set shiftwidth=4  " amount of spaces when shifting

set t_Co=256
set title
set noswapfile
set showmatch               " show matching brackets.
set autoindent              " indent a new line the same amount as the line just typed
set number                  " add line numbers
set ruler
set wildmode=longest,list   " get bash-like tab completions
set cc=80                   " set an 80 column border for good coding style
set splitright		    " splits goto the right by default
set splitbelow 		    " splits go below by default
filetype plugin indent on   " allows auto-indenting depending on file type

" Key Mappings
inoremap jk <ESC>
