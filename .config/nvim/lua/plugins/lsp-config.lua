return {
    {
        "williamboman/mason.nvim",
        config = function()
            require('mason').setup()
        end
    },
    {
        "williamboman/mason-lspconfig.nvim",
        config = function()
            require('mason-lspconfig').setup({
                ensure_installed = {
                    "lua_ls",
                    "bashls",
                    "cssls",
                    "denols",
                    "dockerls",
                    "docker_compose_language_service",
                    "emmet_ls",
                    "html",
                    "helm_ls",
                    "biome",
                    "marksman",
                    "intelephense",
                    "powershell_es",
                    "pyre",
                    "sqlls",
                    "svelte",
                    "volar",
                    "lemminx",
                    "hydra_lsp",
                }
            })
        end
    },
    {
        "neovim/nvim-lspconfig",
        config = function()
            local lspconfig = require('lspconfig')
            lspconfig.lua_ls.setup({})
            lspconfig.bashls.setup({})
            lspconfig.cssls.setup({})
            lspconfig.denols.setup({})
            lspconfig.dockerls.setup({})
            lspconfig.docker_compose_language_service.setup({})
            lspconfig.emmet_ls.setup({})
            lspconfig.html.setup({})
            lspconfig.helm_ls.setup({})
            lspconfig.biome.setup({})
            lspconfig.marksman.setup({})
            lspconfig.intelephense.setup({})
            lspconfig.powershell_es.setup({})
            lspconfig.pyre.setup({})
            lspconfig.sqlls.setup({})
            lspconfig.svelte.setup({})
            lspconfig.volar.setup({})
            lspconfig.lemminx.setup({})
            lspconfig.hydra_lsp.setup({})

            vim.keymap.set('n', 'K', vim.lsp.buf.hover, {})
            vim.keymap.set('n', 'gd', vim.lsp.buf.definition, {})
            vim.keymap.set('n', '<leader>ca', vim.lsp.buf.code_action, {})
        end
    }
}
