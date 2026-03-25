require("nvim-tree").setup({
    sort_by = "case_sensitive",
    view = {
        width = 35,
        side = "left",
        float = {
            enable = false,
        },
    },
    renderer = {
        group_empty = true,
        icons = {
            glyphs = {
                folder = {
                    arrow_closed = "",
                    arrow_open = "",
                    default = "📁",
                    open = "📂",
                    empty = "📂",
                    empty_open = "📂",
                    symlink = "📂",
                    symlink_open = "📂",
                },
                git = {
                    unstaged = "✗",
                    staged = "✓",
                    unmerged = "",
                    renamed = "➜",
                    untracked = "★",
                    deleted = "✖",
                    ignored = "◌",
                },
            },
        },
    },
    filters = {
        dotfiles = false,
        custom = { "node_modules", "\\.git", "__pycache__", "target", "dist", "build" },
        exclude = {},
    },
    actions = {
        open_file = {
            resize_window = true,
            quit_on_open = false,
        },
    },
    git = {
        enable = true,
        ignore = true,
        timeout = 500,
    },
    filesystem_watchers = {
        enable = true,
        ignore_dirs = { "node_modules", ".git", "target", "dist", "build" },
    },
    on_attach = function(bufnr)
        local api = require("nvim-tree.api")
        local function opts(desc)
            return { desc = "nvim-tree: " .. desc, buffer = bufnr, noremap = true, silent = true, nowait = true }
        end
        api.config.mappings.default_on_attach(bufnr)
        vim.keymap.set("n", "l", api.node.open.edit, opts("Open"))
        vim.keymap.set("n", "o", api.node.open.edit, opts("Open"))
        vim.keymap.set("n", "h", api.node.navigate.parent_close, opts("Close"))
        vim.keymap.set("n", "v", api.node.open.vertical, opts("Open: Vertical Split"))
        vim.keymap.set("n", "s", api.node.open.horizontal, opts("Open: Horizontal Split"))
        vim.keymap.set("n", "q", api.tree.close, opts("Close Tree"))
    end,
})
