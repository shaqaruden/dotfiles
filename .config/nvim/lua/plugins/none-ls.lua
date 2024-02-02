return {
    "nvimtools/none-ls.nvim",
    config = function()
        local null_ls = require("null-ls")
        null_ls.setup({
            sources = {
                null_ls.builtins.formatting.stylua,
                null_ls.builtins.diagnostics.phpcs,
                null_ls.builtins.formatting.phpcsfixer,
                null_ls.builtins.formatting.blade_formatter,
                null_ls.builtins.formatting.biome,
            },
        })

        vim.keymap.set("n", "<leader>gf", vim.lsp.buf.format, {})
    end,
}
