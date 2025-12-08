function ToggleVim()
    vim.cmd("noremap <Up>    <Nop><CR>")
    vim.cmd("noremap <Down>    <Nop><CR>")
    vim.cmd("noremap <Right>    <Nop><CR>")
    vim.cmd("noremap <Left>    <Nop><CR>")
end


return {
    {
        "LazyVim/LazyVim",
        opts = {
            -- colorscheme = "kanagawa",
            -- colorscheme = "solarized-osaka-storm",
            colorscheme = "gruvbox-material",
        }
    },
    {
        "hrsh7th/nvim-cmp",
        keys = {
            "<Tab>", nil
        }
    }
}
