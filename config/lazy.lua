local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not (vim.uv or vim.loop).fs_stat(lazypath) then
  vim.fn.system({
    "git",
    "clone",
    "--filter=blob:none",
    "--branch=stable",
    "https://github.com/folke/lazy.nvim.git",
    lazypath,
  })
end
vim.opt.rtp:prepend(lazypath)

require("lazy").setup({
  "Mofiqul/dracula.nvim",
  "rakr/vim-one",
  "preservim/nerdcommenter",
  "mhinz/vim-startify",
  "hrsh7th/nvim-cmp",
  "hrsh7th/cmp-nvim-lsp",
  "hrsh7th/cmp-nvim-lua",
  "hrsh7th/cmp-nvim-lsp-signature-help",
  "hrsh7th/cmp-vsnip",
  "hrsh7th/cmp-path",
  "hrsh7th/cmp-buffer",
  "hrsh7th/vim-vsnip",
  "neovim/nvim-lspconfig",
  "folke/tokyonight.nvim",
  "davidhalter/jedi-vim",
  "simrat39/rust-tools.nvim",
  "dcampos/nvim-snippy",
  "nvim-lua/popup.nvim",
  "navarasu/onedark.nvim",
  "nvim-lua/plenary.nvim",
  "nvim-telescope/telescope.nvim",
  "lepture/vim-jinja",
  "ChmaraX/herdr-nvim",
  "Chiel92/vim-autoformat",
  { "junegunn/fzf", dir = "~/.fzf", build = "./install --all" },
  "junegunn/fzf.vim",
  "Xuyuanp/yanil",
  "nvim-lualine/lualine.nvim",
  "nvim-tree/nvim-web-devicons",
  "nvim-tree/nvim-tree.lua",
  { "nvim-treesitter/nvim-treesitter", build = ":TSUpdate" },
  "akinsho/bufferline.nvim",
  "sbdchd/neoformat",
  "mhinz/vim-signify",
  "levouh/tint.nvim",
  {
    "sudo-tee/opencode.nvim",
    lazy = false,
    dependencies = {
      {
        "MeanderingProgrammer/render-markdown.nvim",
        opts = {
          anti_conceal = { enabled = false },
          file_types = { "markdown", "opencode_output" },
        },
        ft = { "markdown", "Avante", "copilot-chat", "opencode_output" },
      },
      "saghen/blink.cmp",
      "nvim-telescope/telescope.nvim",
    },
  },
  "saghen/blink.cmp",
  "saghen/blink.lib",
  "MeanderingProgrammer/render-markdown.nvim",
  "editorconfig/editorconfig-vim",
  { "williamboman/mason.nvim", build = ":MasonUpdate" },
  "williamboman/mason-lspconfig.nvim",
  "voldikss/vim-floaterm",
  { "Exafunction/codeium.vim", branch = "main" },
})

vim.opt.completeopt = { "menu", "menuone", "noselect" }
vim.opt.termguicolors = true

vim.keymap.set("n", "yf", function()
  vim.fn.setreg("+", vim.fn.expand("%:p"))
end, { silent = true })
vim.keymap.set("n", "yd", function()
  vim.fn.setreg("+", vim.fn.expand("%:p:h"))
end, { silent = true })

vim.api.nvim_create_autocmd("BufReadPost", {
  callback = function()
    local mark = vim.api.nvim_buf_get_mark(0, '"')
    local lcount = vim.api.nvim_buf_line_count(0)
    if mark[1] > 0 and mark[1] <= lcount then
      pcall(vim.api.nvim_win_set_cursor, 0, mark)
    end
  end,
})
