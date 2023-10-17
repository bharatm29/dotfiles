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
}
