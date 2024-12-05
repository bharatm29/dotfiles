return {
    {
        { "nvim-neo-tree/neo-tree.nvim", enabled = false }
    },
    -- use telescope file browser instead of neotree
    {
        "telescope.nvim",
        dependencies = {
            {
                "nvim-telescope/telescope-fzf-native.nvim",
                build = "make",
            },
        },
        config = function(_, opts)
            local telescope = require("telescope")
            local actions = require("telescope.actions")

            opts.defaults = vim.tbl_deep_extend("force", opts.defaults, {
                wrap_results = true,
                layout_strategy = "horizontal",
                layout_config = { prompt_position = "top" },
                sorting_strategy = "ascending",
                winblend = 0,
                mappings = {
                    n = {},
                },
            })
            opts.pickers = {
                diagnostics = {
                    theme = "ivy",
                    initial_mode = "normal",
                    layout_config = {
                        preview_cutoff = 9999,
                    },
                },
            }
            telescope.setup(opts)
            require("telescope").load_extension("fzf")
        end,
    },
}
