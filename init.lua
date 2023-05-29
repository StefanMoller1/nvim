local core_conf_files = {
    "vim-plug.vim", 
    "fzf.vim",
    "colorscheme.lua",
    "basic.vim",
    "settings.lua",
    "devicons.lua",
    "nvim-tree.lua",
    "lsp.lua", 
    "navigation.vim",
}

for _, name in ipairs(core_conf_files) do
    local path = string.format("%s/config/%s", vim.fn.stdpath("config"), name)
    local source_cmd = "source " .. path
    vim.cmd(source_cmd)
end
