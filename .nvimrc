filetype plugin on
set omnifunc=syntaxcomplete#Complete
set number !
set mouse=a
set tabstop=4
set shiftwidth=4
autocmd InsertEnter,InsertLeave * set cul!
autocmd VimEnter * NERDTree
set expandtab
colorscheme gruvbox
call plug#begin()
  Plug 'preservim/nerdtree'
  Plug 'yuezk/vim-js'
  Plug 'maxmellon/vim-jsx-pretty'
  Plug 'ternjs/tern_for_vim', {'do': 'npm install'}
  Plug 'neovim/nvim-lspconfig'
  Plug 'kabouzeid/nvim-lspinstall'
  Plug 'folke/lsp-colors.nvim'
  Plug 'dense-analysis/ale'
  Plug 'nvim-lua/completion-nvim'
call plug#end()
set completeopt=menuone,noinsert,noselect
let g:completion_matching_strategy_list = ['exact', 'substring', 'fuzzy']
lua << EOF
require'lspconfig'.pyright.setup{on_attach=require'completion'.on_attach} 
EOF
colorscheme gruvbox
