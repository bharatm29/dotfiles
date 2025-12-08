--[[ TODO on next blink.cmp update
* new `draw` spec
* check if completion-enabling is still needed for `css_ls` at `nvim-lspconfig`
  config, (see: https://github.com/Saghen/blink.cmp/issues/13)

NOTE:- Stolen from https://github.com/chrisgrieser/.config/blob/8a9b98f450e71b92ac10aec6084769d710d6dbb0/nvim/lua/plugins/completion-and-snippets.lua
]]

local function border(hlname)
    return {
        { "╭", hlname },
        { "─", hlname },
        { "╮", hlname },
        { "│", hlname },
        { "╯", hlname },
        { "─", hlname },
        { "╰", hlname },
        { "│", hlname },
    }
end

return {
    {
        "saghen/blink.cmp",
        ---@module 'blink.cmp'
        ---@type blink.cmp.Config
        opts = {
            appearance = {
                -- supporting themes: tokyonight
                -- not supported: nightfox
                use_nvim_cmp_as_default = true,
            },
            keymap = {
                ["<D-c>"] = { "show" },
                ["<S-CR>"] = { "hide" },
                ["<CR>"] = { "select_and_accept", "fallback" },
                ["<Tab>"] = { "select_next", "fallback" },
                ["<S-Tab>"] = { "select_prev", "fallback" },
                ["<Down>"] = { "select_next", "fallback" },
                ["<Up>"] = { "select_prev", "fallback" },
                ["<PageDown>"] = { "scroll_documentation_down" },
                ["<PageUp>"] = { "scroll_documentation_up" },
            },
            completion = {
                documentation = {
                    window = {
                        border = border("CmpDocumentationBorder"),
                    }
                },
                menu = {
                    border = border("CmpItemKindKeyword"),
                },
            },
        },
    },
}
