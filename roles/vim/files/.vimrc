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
Plug 'phaazon/hop.nvim'
" Plug 'crusoexia/vim-monokai'
call plug#end()

" Treesitter
:lua <<EOF
require 'nvim-treesitter.highlight'
require'nvim-treesitter.configs'.setup {
  ensure_installed = "all",
  additional_vim_regex_highlighting = false,
  highlight = {
	  enable = true
  }
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

let g:monokai_gui_italic = 1
let g:monokai_term_italic = 1
syntax on		" filetype detection by synxtax
colorscheme monokai
" colorscheme monokai_pro
" colorscheme monokai_soda
" checks if your terminal has 24-bit color support
if (has("termguicolors"))
    set termguicolors
    hi LineNr ctermbg=NONE guibg=NONE
endif

" Hop
:lua <<EOF
require'hop'.setup {
  keys = 'etovxqpdygfblzhckisuran',
}
vim.api.nvim_set_keymap('', 'f', "<cmd>lua require'hop'.hint_char1({ direction = require'hop.hint'.HintDirection.AFTER_CURSOR, current_line_only = true })<cr>", {})
vim.api.nvim_set_keymap('', 'F', "<cmd>lua require'hop'.hint_char1({ direction = require'hop.hint'.HintDirection.BEFORE_CURSOR, current_line_only = true })<cr>", {})
vim.api.nvim_set_keymap('', 't', "<cmd>lua require'hop'.hint_char1({ direction = require'hop.hint'.HintDirection.AFTER_CURSOR, current_line_only = true, hint_offset = -1 })<cr>", {})
vim.api.nvim_set_keymap('', 'T', "<cmd>lua require'hop'.hint_char1({ direction = require'hop.hint'.HintDirection.BEFORE_CURSOR, current_line_only = true, hint_offset = 1 })<cr>", {})

vim.api.nvim_set_keymap('', 's', "<cmd>lua require'hop'.hint_char1({ hint_offset = 0 })<cr>", {})
vim.api.nvim_set_keymap('', 'w', "<cmd>lua require'hop'.hint_words({ hint_offset = 0 })<cr>", {})
EOF

" Basic Options

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
