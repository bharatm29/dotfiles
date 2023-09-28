local capabilities = require("cmp_nvim_lsp").default_capabilities()
local lspconfig = require("lspconfig")
local util = require('lspconfig.util')
local handlers = {
    ['textDocument/hover'] = vim.lsp.with(vim.lsp.handlers.hover, { border = border }),
    ['textDocument/signatureHelp'] = vim.lsp.with(vim.lsp.handlers.signature_help, { border = border }),
}

lspconfig.lua_ls.setup({ capabilities = capabilities })
lspconfig.clangd.setup({ capabilities = capabilities })

-- lspconfig.jedi_language_server.setup({ capabilities = capabilities })
lspconfig.pyright.setup({ capabilities = capabilities })

-- lspconfig.emmet_language_server.setup({ capabilities = capabilities })
lspconfig.bashls.setup({
    capabilities = capabilities,
})

lspconfig.yamlls.setup({ capabilities = capabilities })
-- lspconfig.emmet_ls.setup({
--     -- on_attach = on_attach,
--     capabilities = capabilities,
--     filetypes = { "css", "eruby", "html", "less", "sass", "scss", "svelte", "pug", "vue" },
--     init_options = {
--       html = {
--         options = {
--           -- For possible options, see: https://github.com/emmetio/emmet/blob/master/src/config.ts#L79-L267
--           ["bem.enabled"] = true,
--         },
--       },
--     }
-- })
-- lspconfig.tsserver.setup({
--     capabilities = capabilities,
--     single_file_support = true
-- })
--
lspconfig.tsserver.setup({
    capabilities = capabilities,
    -- on_attach = on_attach
    handlers = handlers,
    init_options = {
        preferences = {
            includeInlayParameterNameHints = 'all',
            includeInlayParameterNameHintsWhenArgumentMatchesName = true,
            includeInlayFunctionParameterTypeHints = true,
            includeInlayVariableTypeHints = true,
            includeInlayPropertyDeclarationTypeHints = true,
            includeInlayFunctionLikeReturnTypeHints = true,
            includeInlayEnumMemberValueHints = true,
            importModuleSpecifierPreference = 'non-relative',
        },
    },
    on_attach = function(client, bufnr)
        client.server_capabilities.document_formatting = false
        client.server_capabilities.document_range_formatting = false
        on_attach(client, bufnr)
    end,

    -- settings = {
    --     init_options = {
    --         preferences = {
    --             quotePreference = 'single',
    --             disableSuggestions = true,
    --         },
    --         javascript = {
    --             format = {
    --                 indentSize = 4,
    --             },
    --         },
    --     },
    -- },
})

-- lspconfig.html.setup({
--     capabilities = capabilities,
--     -- on_attach = on_attach,
--     handlers = handlers,
--     on_attach = function(client, bufnr)
--         client.server_capabilities.document_formatting = false
--         client.server_capabilities.document_range_formatting = false
--         on_attach(client, bufnr)
--     end,
--     root_dir = function() return vim.loop.cwd() end 
-- })

-- Global mappings.
-- See `:help vim.diagnostic.*` for documentation on any of the below functions
--vim.keymap.set('n', '<space>e', vim.diagnostic.open_float)
--vim.keymap.set('n', '[d', vim.diagnostic.goto_prev)
--vim.keymap.set('n', ']d', vim.diagnostic.goto_next)
--vim.keymap.set('n', '<space>q', vim.diagnostic.setloclist)

-- Use LspAttach autocommand to only map the following keys
-- after the language server attaches to the current buffer
vim.api.nvim_create_autocmd("LspAttach", {
  group = vim.api.nvim_create_augroup("UserLspConfig", {}),
  callback = function(ev)
    -- Enable completion triggered by <c-x><c-o>
    vim.bo[ev.buf].omnifunc = "v:lua.vim.lsp.omnifunc"

    -- Buffer local mappings.
    -- See `:help vim.lsp.*` for documentation on any of the below functions
    local opts = { buffer = ev.buf }
    vim.keymap.set("n", "gD", vim.lsp.buf.declaration, opts)
    vim.keymap.set("n", "gd", vim.lsp.buf.definition, opts)
    vim.keymap.set("n", "K", vim.lsp.buf.hover, opts)
    vim.keymap.set("n", "gi", vim.lsp.buf.implementation, opts)
    vim.keymap.set("n", "<C-k>", vim.lsp.buf.signature_help, opts)
    vim.keymap.set("n", "<space>wa", vim.lsp.buf.add_workspace_folder, opts)
    vim.keymap.set("n", "<space>wr", vim.lsp.buf.remove_workspace_folder, opts)
    vim.keymap.set("n", "<space>wl", function()
      print(vim.inspect(vim.lsp.buf.list_workspace_folders()))
    end, opts)
    vim.keymap.set("n", "<space>D", vim.lsp.buf.type_definition, opts)
    vim.keymap.set("n", "<space>rn", vim.lsp.buf.rename, opts)
    vim.keymap.set({ "n", "v" }, "<space>ca", vim.lsp.buf.code_action, opts)
    vim.keymap.set("n", "gr", vim.lsp.buf.references, opts)
    vim.keymap.set("n", "<space>f", function()
      vim.lsp.buf.format({ async = true })
    end, opts)
  end,
})

