return {
    {
        "folke/tokyonight.nvim",
        dependencies = {
            "nvim-lualine/lualine.nvim",
            "nvim-tree/nvim-web-devicons",
            "utilyre/barbecue.nvim",
            "SmiteshP/nvim-navic",
            "nvim-treesitter/nvim-treesitter",
        },
        config = function()
            vim.cmd([[colorscheme tokyonight]])
            require('lualine').setup({
                options = {
                    theme = "tokyonight"
                },
            })
            require('barbecue').setup {
                theme = 'tokyonight',
            }
        end
    },
    {
        "catppuccin/nvim",
        lazy = true,
        name = "catppuccin",
        opts = {
            integrations = {
                alpha = true,
                cmp = true,
                flash = true,
                gitsigns = true,
                illuminate = true,
                indent_blankline = { enabled = true },
                lsp_trouble = true,
                mason = true,
                mini = true,
                native_lsp = {
                    enabled = true,
                    underlines = {
                        errors = { "undercurl" },
                        hints = { "undercurl" },
                        warnings = { "undercurl" },
                        information = { "undercurl" },
                    },
                },
                navic = { enabled = true, custom_bg = "lualine" },
                neotest = true,
                noice = true,
                notify = true,
                neotree = true,
                semantic_tokens = true,
                telescope = true,
                treesitter = true,
                which_key = true,
            },
        },
    }
}
