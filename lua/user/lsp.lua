vim.api.nvim_create_autocmd("LspAttach", {
    callback = function(args)
        -- Create your keybindings here...
        -- Defaults from https://github.com/neovim/nvim-lspconfig#keybindings-and-completion
        local opts = { buffer = args.buf }
        vim.keymap.set("n", "gD", vim.lsp.buf.declaration, opts)
        vim.keymap.set("n", "gd", vim.lsp.buf.definition, opts)
        vim.keymap.set("n", "K", vim.lsp.buf.hover, opts)
        vim.keymap.set("n", "gi", vim.lsp.buf.implementation, opts)
        vim.keymap.set("n", "<C-k>", vim.lsp.buf.signature_help, opts)
    end
})

require("mason").setup()
require("mason-lspconfig").setup({
    ensure_installed = {
        -- Add language servers here...
        "gopls",
    }
})

local lspconfig = require("lspconfig")
local lsp_capabilities = require("cmp_nvim_lsp").default_capabilities()

require("mason-lspconfig").setup_handlers({
    function(server_name)
        lspconfig[server_name].setup({
            capabilities = lsp_capabilities,
        })
    end,
})
