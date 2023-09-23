local config = require "gitsigns.config"
return {
    -- {
    --     "rhysd/accelerated-jk",
    --     config = function()
    --         vim.keymap.set("n", "j", "<Plug>(accelerated_jk_gj)")
    --         vim.keymap.set("n", "k", "<Plug>(accelerated_jk_gk)")
    --     end,
    -- },
    {
        "folke/persistence.nvim",
        config = function()
            require("persistence").setup()
            vim.keymap.set("n", "<leader>qs", [[<cmd>lua require("persistence").load()<cr>]])
            vim.keymap.set("n", "<leader>ql", [[<cmd>lua require("persistence").load({ last = true})<cr>]])
            vim.keymap.set("n", "<leader>qd", [[<cmd>lua require("persistence").stop()<cr>]])
        end
    },
    {
        "windwp/nvim-autopairs",
        opts = {
            enable_check_bracket_line = false,
        },
    },
    {
        "ethanholz/nvim-lastplace",
        config = true,
    },
    {
        "folke/flash.nvim",
        config = function()
            require("flash").setup()
            vim.keymap.set({ "n", "x", "o" }, "s",
                function()
                    require("flash").jump({
                        search = {
                            mode = function(str)
                                return "\\<" .. str
                            end,
                        },
                    })
                end
            )
            vim.keymap.set({ "n", "x", "o" }, "S",
                function()
                    require("flash").treesitter()
                end
            )
            vim.keymap.set({ "o" }, "r",
                function()
                    require("flash").remote()
                end
            )
            vim.keymap.set({ "o", "x" }, "R",
                function()
                    require("flash").treesitter_search()
                end
            )
        end,
    },
    {
        "kamykn/spelunker.vim",
        config = function()
            vim.g.spelunker_check_type = 2
        end
    },
    {
        "ellisonleao/glow.nvim",
        config = true,
    },
    {
        "nvim-tree/nvim-tree.lua",
        config = function()
            vim.g.loaded_netrw = 1
            vim.g.loaded_netrwPlugin = 1
            vim.keymap.set("n", "<leader>e", ":NvimTreeToggle<CR>")
            require("nvim-tree").setup()
        end
    },
    {
        "folke/which-key.nvim",
        config = true,
    },
    {
        'echasnovski/mini.ai',
        config = true,
    },
    {
        "echasnovski/mini.comment",
        config = true,
    },
    {
        "thinca/vim-quickrun",
    },
    {
        "rcarriga/nvim-notify",
        config = true
    },
    -- {
    --     "linux-cultist/venv-selector.nvim",
    --     dependencies = { "neovim/nvim-lspconfig", "nvim-telescope/telescope.nvim", "mfussenegger/nvim-dap-python" },
    --     config = true,
    --     event = "VeryLazy",
    --     keys = { {
    --         "<leader>vs", "md>:VenvSelect<cr>",
    --         "<leader>vc", "<cmd>:VenvSelectCached<cr>"
    --     } }
    -- },
    {
        "is0n/jaq-nvim",
        config = function()
            require('jaq-nvim').setup {
                cmds = {
                    internal = {
                        lua = "luafile %",
                        vim = "source %"
                    },
                    external = {
                        markdown = "glow %",
                        python   = "python %",
                        go       = "go run %",
                        sh       = "sh %"
                    }
                },
                behavior = {
                    default     = "float",
                    startinsert = false,
                    wincmd      = false,
                    autosave    = false
                },

                ui = {
                    float = {
                        border   = "none",
                        winhl    = "Normal",
                        borderhl = "FloatBorder",
                        winblend = 0,
                        height   = 0.8,
                        width    = 0.8,
                        x        = 0.5,
                        y        = 0.5
                    },
                    terminal = {
                        position = "bot",
                        size     = 10,
                        line_no  = false
                    },
                    quickfix = {
                        position = "bot",
                        size     = 10
                    }
                }
            }
        end
    },
    -- {
    --     "theniceboy/joshuto.nvim",
    -- },
    {
        "s1n7ax/nvim-window-picker",
        config = function()
            require("window-picker").setup({
                filter_rules = {
                    include_current_win = true,
                    bo = {
                        filetype = { "fidget", "neo-tree" }
                    }
                }
            })
            vim.keymap.set("n",
                "<c-w>p",
                function()
                    local window_number = require('window-picker').pick_window()
                    if window_number then vim.api.nvim_set_current_win(window_number) end
                end
            )
        end
    },
}
