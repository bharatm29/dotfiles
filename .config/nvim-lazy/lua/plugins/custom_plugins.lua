return {
    "rebelot/kanagawa.nvim",
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
        "sainnhe/gruvbox-material",
    },

    {
        "nvim-lspconfig",
        opts = {
            inlay_hints = { enabled = false },
        },
    },

    -- Compilation shit
    {
        "ej-shafran/compile-mode.nvim",
        tag = "v5.4.0",
        dependencies = {
            "nvim-lua/plenary.nvim",
            { "m00qek/baleia.nvim", tag = "v1.3.0" },
        },
        config = function()
            vim.g.compile_mode = {
                baleia_setup = true,
            }
        end,
    },
}
