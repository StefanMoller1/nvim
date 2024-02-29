map ; :Files<CR>
map <leader>' :Ag<CR>
map <leader>g :GFiles?<cr> 
map <leader>b :Buffers<cr> 
map <C-o> :NvimTreeToggle<CR>
map <C-p> :NvimTreeFocus<CR>

"" Managing Buffers
:set hidden
nnoremap <C-.> :bnext<CR>
nnoremap <C-,> :bprev<CR>
nnoremap <C-'> :bd<CR>
nnoremap <A-,> :vertical resize -10<CR>
nnoremap <A-.> :vertical resize +10<CR>
nnoremap <A-Up> :horizontal resize +10<CR>
nnoremap <A-Down> :horizontal resize -10<CR>

"" Managing Tabs
map <C-t><up> :tabr<CR>
map <C-t><down> :tabl<CR>
map <C-t><left> :tabp<CR>
map <C-t><right> :tabn<CR>
nnoremap <A-`> :split term://zsh<CR>
nnoremap <A-x> :vsplit term://zsh<CR>

nnoremap <C-s> :w<CR>
nnoremap <C-q> :bd<CR>
nnoremap <leaderi>qq :qa!<CR>

"" Move line or visually selected block - alt+j/k
vnoremap <A-j> :m .+1<CR>
vnoremap <A-k> :m .-2<CR>

"" Move split panes to left/bottom/top/right
nnoremap <A-H> <C-W>H
nnoremap <A-J> <C-W>J
nnoremap <A-K> <C-W>K
nnoremap <A-L> <C-W>L

"" Move between panes to left/bottom/top/right
nnoremap <C-h> <C-w>h
nnoremap <C-j> <C-w>j
nnoremap <C-k> <C-w>k
nnoremap <C-l> <C-w>l

"" Press i to enter insert mode, and ii to exit insert mode.
inoremap ii <Esc>
inoremap jk <Esc>
inoremap kj <Esc>

" Find files using Telescope command-line sugar.
nnoremap <leader>ff <cmd>Telescope find_files<cr>
nnoremap <leader>fg <cmd>Telescope live_grep<cr>
nnoremap <leader>fb <cmd>Telescope buffers<cr>
nnoremap <leader>fh <cmd>Telescope help_tags<cr>

nnoremap <leader>gw :vimgrep '' **/*.{ts,tsx,js,jsx,go,rs}<s-left><left><left>

" Expand
imap <expr> <C-j>   vsnip#expandable()  ? '<Plug>(vsnip-expand)'         : '<C-j>'
smap <expr> <C-j>   vsnip#expandable()  ? '<Plug>(vsnip-expand)'         : '<C-j>'

" Expand or jump
imap <expr> <C-l>   vsnip#available(1)  ? '<Plug>(vsnip-expand-or-jump)' : '<C-l>'
smap <expr> <C-l>   vsnip#available(1)  ? '<Plug>(vsnip-expand-or-jump)' : '<C-l>'

" Jump forward or backward
"imap <expr> <Tab>   vsnip#jumpable(1)   ? '<Plug>(vsnip-jump-next)'      : '<Tab>'
"smap <expr> <Tab>   vsnip#jumpable(1)   ? '<Plug>(vsnip-jump-next)'      : '<Tab>'
imap <expr> <S-Tab> vsnip#jumpable(-1)  ? '<Plug>(vsnip-jump-prev)'      : '<S-Tab>'
smap <expr> <S-Tab> vsnip#jumpable(-1)  ? '<Plug>(vsnip-jump-prev)'      : '<S-Tab>'

" Select or cut text to use as $TM_SELECTED_TEXT in the next snippet.
" See https://github.com/hrsh7th/vim-vsnip/pull/50
nmap        s   <Plug>(vsnip-select-text)
xmap        s   <Plug>(vsnip-select-text)
nmap        S   <Plug>(vsnip-cut-text)
xmap        S   <Plug>(vsnip-cut-text)

let g:vsnip_filetypes = {}
let g:vsnip_filetypes.javascriptreact = ['javascript']
let g:vsnip_filetypes.typescriptreact = ['typescript']
