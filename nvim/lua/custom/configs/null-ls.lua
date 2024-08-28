local augroup = vim.api.nvim_create_augroup("LspFormatting", {})
local null_ls = require("null-ls")

local opts = {
    sources = {
        null_ls.builtins.formatting.prettier,
    },
    on_attach = function(client, bufnr)
        print("LSP attached to buffer " .. bufnr)
        if client.supports_method("textDocument/formatting") then
            print("Formatting supported")
            vim.api.nvim_clear_autocmds({
                group = augroup,
                buffer = bufnr,
            })
            vim.api.nvim_create_autocmd("BufWritePre", {
                group = augroup,
                buffer = bufnr,
                callback = function()
                    vim.lsp.buf.format({ bufnr = bufnr })
                end,
            })
        end
    end,
}

null_ls.setup(opts)
