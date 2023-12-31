return {
    "thePrimeagen/harpoon",
    "rebelot/kanagawa.nvim",
    {
        "norcalli/nvim-colorizer.lua",
    },
    {
        "iamcco/markdown-preview.nvim",
        config = function()
            vim.fn["mkdp#util#install"]()
        end,
    },
    -- "lunarvim/synthwave84.nvim"

    -- color theme
    {
        "craftzdog/solarized-osaka.nvim",
        lazy = false,
        priority = 1000,
        opts = {},
    },

    -- preview when renaming
    {
        "smjonas/inc-rename.nvim",
        cmd = "IncRename",
        config = true,
    },

    -- Refactoring tool
    {
        "ThePrimeagen/refactoring.nvim",
        keys = {
            {
                "<leader>r",
                function()
                    require("refactoring").select_refactor()
                end,
                mode = "v",
                noremap = true,
                silent = true,
                expr = false,
            },
        },
        opts = {},
    },
    {
        "rcarriga/neotest",
        dependencies = {
            "marilari88/neotest-vitest",
            "nvim-neotest/neotest-go",
            "rcasia/neotest-java",
        },
        opts = {
            adapters = {
                ["neotest-go"] = {
                    args = { "-tags=integration" },
                },
                ["neotest-vitest"] = {},
                ["neotest-java"] = {},
            },
        },
    },

    -- mason
    {
        "williamboman/mason.nvim",
        opts = function(_, opts)
            vim.list_extend(opts.ensure_installed, {
                "stylua",
                "selene",
                "luacheck",
                "tailwindcss-language-server",
                "typescript-language-server",
                "css-lsp",

                "pyright",
                "black",

                "shellcheck",
                "shfmt",

                "dockerfile-language-server",
                "docker-compose-language-service",
            })
        end,
    },

    {
        "ellisonleao/gruvbox.nvim",
        priority = 1000,
        config = true,
        opts = ...,
    },
}
