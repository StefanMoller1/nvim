call plug#begin('~/.local/share/nvim/plugged')
 "Plug 'dracula/vim'
 Plug 'Mofiqul/dracula.nvim'
 Plug 'rakr/vim-one'
 Plug 'preservim/nerdcommenter'
 Plug 'mhinz/vim-startify'
 Plug 'neoclide/coc.nvim', {'branch': 'release'}
 Plug 'neovim/nvim-lspconfig'
 Plug 'folke/tokyonight.nvim' 
 Plug 'davidhalter/jedi-vim'
 Plug 'simrat39/rust-tools.nvim'
 Plug 'dcampos/nvim-snippy'
 Plug 'nvim-lua/popup.nvim'
 Plug 'nvim-lua/plenary.nvim'
 Plug 'nvim-telescope/telescope.nvim'
 Plug 'lepture/vim-jinja'
 Plug 'Chiel92/vim-autoformat'
 Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
 Plug 'junegunn/fzf.vim'
 Plug 'Xuyuanp/yanil'
 Plug 'nvim-lualine/lualine.nvim'
 Plug 'nvim-tree/nvim-web-devicons'
 Plug 'nvim-tree/nvim-tree.lua'
 Plug 'nvim-treesitter/nvim-treesitter', {'do': ':TSUpdate'}
 Plug 'akinsho/bufferline.nvim', { 'tag': 'v3.*' }
 Plug 'sbdchd/neoformat'
 Plug 'mhinz/vim-signify'
 Plug 'levouh/tint.nvim'
 Plug 'editorconfig/editorconfig-vim'
 Plug 'williamboman/mason.nvim' , { 'do': ':MasonUpdate' }

call plug#end()

set completeopt=menu,menuone,noselect
"inoremap <silent><expr> <TAB>
      "\ coc#pum#visible() ? coc#pum#next(1) :
      "\ CheckBackspace() ? "\<Tab>" :
      "\ coc#refresh()
inoremap <expr><S-TAB> coc#pum#visible() ? coc#pum#prev(1) : "\<C-h>"
inoremap <silent><expr> <CR> coc#pum#visible() ? coc#pum#confirm()
                              \: "\<C-g>u\<CR>\<c-r>=coc#on_enter()\<CR>"

" open file in a text by placing text and gf
"nnoremap gf :vert winc f<cr>
" copies filepath to clipboard by pressing yf
:nnoremap <silent> yf :let @+=expand('%:p')<CR>
" copies pwd to clipboard: command yd
:nnoremap <silent> yd :let @+=expand('%:p:h')<CR>
" Vim jump to the last position when reopening a file
if has("autocmd")
  au BufReadPost * if line("'\"") > 0 && line("'\"") <= line("$")
    \| exe "normal! g'\"" | endif
endif

set termguicolors
