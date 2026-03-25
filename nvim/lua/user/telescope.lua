require("telescope").setup({
    defaults = {
        prompt_prefix = " ",
        selection_caret = " ",
        path_display = { "truncate" },
        sorting_strategy = "ascending",
        layout_strategy = "horizontal",
        layout_config = {
            horizontal = {
                prompt_position = "top",
                preview_width = 0.55,
                results_width = 0.8,
            },
            vertical = {
                mirror = false,
            },
            width = 0.87,
            height = 0.80,
            preview_cutoff = 120,
        },
        winblend = 0,
        border = {},
        borderchars = { "─", "│", "─", "│", "╭", "╮", "╯", "╰" },
        color_devicons = true,
        set_env = { ["COLORTERM"] = "truecolor" },
        file_previewer = require("telescope.previewers").new_termopen_prog,
        grep_previewer = require("telescope.previewers").new_termopen_prog,
        qflist_previewer = require("telescope.previewers").new_termopen_prog,
        buffer_previewer_maker = require("telescope.previewers").buffer_previewer_maker,
    },
    pickers = {
        find_files = {
            theme = "dropdown",
            previewer = false,
        },
        live_grep = {
            theme = "ivy",
        },
        buffers = {
            theme = "dropdown",
            previewer = false,
        },
    },
    extensions = {
        ["ui-select"] = {
            require("telescope.themes").get_dropdown({
                previewer = false,
            }),
        },
    },
})

require("telescope").load_extension("ui-select")
