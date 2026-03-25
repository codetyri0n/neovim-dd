require("lazy").setup({
    { "folke/lazy.nvim", version = false },
    { "folke/neoconf.nvim", cmd = "Neoconf" },
    { "folke/neodev.nvim" },
    { "catppuccin/nvim", name = "catppuccin" },

    { "nvim-tree/nvim-tree.lua", version = "*" },
    { "nvim-tree/nvim-web-devicons" },

    { "nvim-lualine/lualine.nvim", dependencies = { "nvim-tree/nvim-web-devicons", "catppuccin/nvim" } },

    { "akinsho/toggleterm.nvim", version = "*", config = true },
    { "folke/which-key.nvim" },

    { "nvim-telescope/telescope.nvim", dependencies = { "nvim-lua/plenary.nvim" } },
    { "nvim-telescope/telescope-ui-select.nvim" },

    { "hrsh7th/nvim-cmp" },
    { "hrsh7th/cmp-buffer" },
    { "hrsh7th/cmp-path" },
    { "hrsh7th/cmp-cmdline" },
    { "hrsh7th/cmp-nvim-lsp" },
    { "hrsh7th/cmp-nvim-lsp-signature-help" },
    { "L3MON4D3/LuaSnip" },
    { "saadparwaiz1/cmp_luasnip" },
    { "rafamadriz/friendly-snippets" },

    { "williamboman/mason.nvim" },
    { "williamboman/mason-lspconfig.nvim" },

    { "j-hui/fidget.nvim", tag = "legacy" },
    { "folke/trouble.nvim" },
    { "folke/lsp-colors.nvim" },

    {
        "nvim-treesitter/nvim-treesitter",
        build = ":TSUpdate",
        config = function()
            require("nvim-treesitter").setup({
                ensure_installed = {
                    "bash", "c", "cpp", "go", "html", "javascript",
                    "json", "lua", "markdown", "python", "rust",
                    "toml", "tsx", "typescript", "yaml",
                },
                sync_install = false,
                auto_install = true,
                highlight = {
                    enable = true,
                    additional_vim_regex_highlighting = false,
                },
                indent = { enable = true },
                incremental_selection = {
                    enable = true,
                    keymaps = {
                        init_selection = "<CR>",
                        node_incremental = "<CR>",
                        scope_incremental = "<S-CR>",
                        node_decremental = "<BS>",
                    },
                },
                textobjects = {
                    enable = true,
                    keymaps = {
                        ["af"] = "@function.outer",
                        ["if"] = "@function.inner",
                        ["ac"] = "@class.outer",
                        ["ic"] = "@class.inner",
                        ["aa"] = "@parameter.outer",
                        ["ia"] = "@parameter.inner",
                    },
                },
                autotag = { enable = true },
            })
            vim.treesitter.language.register("bash", "sh")
        end,
    },
    { "nvim-treesitter/nvim-treesitter-textobjects" },
    { "windwp/nvim-ts-autotag" },
    { "windwp/nvim-autopairs" },

    { "lewis6991/gitsigns.nvim", tag = "release" },
    { "sindrets/diffview.nvim", dependencies = "nvim-lua/plenary.nvim" },
    { "NeogitOrg/neogit", dependencies = "nvim-lua/plenary.nvim" },

    { "folke/todo-comments.nvim", dependencies = "nvim-lua/plenary.nvim" },

    { "folke/snacks.nvim", priority = 1000 },

    {
        "goolord/alpha-nvim",
        dependencies = { "nvim-tree/nvim-web-devicons" },
    },

    { "mbbill/undotree" },

    { "numToStr/Comment.nvim" },
    { "editorconfig/editorconfig-vim" },

    { "stevearc/conform.nvim" },
    { "mfussenegger/nvim-dap" },
    { "rcarriga/nvim-dap-ui" },
    { "theHamsta/nvim-dap-virtual-text" },
}, {
    ui = {
        border = "rounded",
        icons = {
            cmd = "⌘",
            config = "󰃤",
            event = "󰕖",
            ft = "󰌜",
            init = "󰕖",
            import = "󰕖",
            keys = "󰌆",
            lib = "󰕖",
            list = "󰕖",
            lazy = "󰕖",
            loaded = "✔",
            not_loaded = "✗",
            plugin = "󰕖",
            runtime = "󰕖",
            require = "󰕖",
            source = "󰕖",
            start = "󰕖",
            task = "✔",
            keys = "󰌆",
            pick = "󰕖",
            perf = "󰕖",
        },
    },
})
