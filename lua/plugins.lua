return {
    -- Color scheme (rose-pine)
    { "rose-pine/neovim", name = "rose-pine" },

    -- LSP dependencies
    -- Derived from "You might not need LSP-zero" documentation
    -- This wasn"t in a single place, I got here from trial-and-error
    { "williamboman/mason.nvim" },
    { "williamboman/mason-lspconfig.nvim" },
    { "neovim/nvim-lspconfig" },
    { "hrsh7th/nvim-cmp" },
    { "hrsh7th/cmp-nvim-lsp" },

    -- Treesitter (improved syntax highlighting)
    { "nvim-treesitter/nvim-treesitter",
        build = ":TSUpdate",
    },

    -- Telescope (fuzzy finder)
    { "nvim-telescope/telescope.nvim",
        tag = "0.1.2",
        dependencies = { "nvim-lua/plenary.nvim" },
    },

    -- Golang stuff
    { "ray-x/go.nvim",
        dependencies = {
            "ray-x/guihua.lua",
            "neovim/nvim-lspconfig",
            "nvim-treesitter/nvim-treesitter",
        },
    },

    -- Neorg (note taking)

    { "nvim-neorg/neorg",
        build = ":Neorg sync-parsers",
        dependencies = { "nvim-lua/plenary.nvim" },
        config = function()
            require("neorg").setup({
                load = {
                    ["core.defaults"] = {}, -- Loads default behavior
                    ["core.concealer"] = {}, -- Adds pretty icons to your documents
                    ["core.dirman"] = {
                        config = {
                            workspaces = {
                                notes = "~/Notes",
                            },
                            default_workspace = "notes",
                        },
                    },
                },
            })
        end,
    },
}
