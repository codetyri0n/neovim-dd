require("lualine").setup({
    options = {
        theme = {
            normal = {
                a = { fg = "#1e1e2e", bg = "#cba6f7" },
                b = { fg = "#cdd6f4", bg = "#313244" },
                c = { fg = "#cdd6f4", bg = "#1e1e2e" },
            },
            insert = {
                a = { fg = "#1e1e2e", bg = "#a6e3a1" },
                b = { fg = "#cdd6f4", bg = "#313244" },
                c = { fg = "#cdd6f4", bg = "#1e1e2e" },
            },
            visual = {
                a = { fg = "#1e1e2e", bg = "#f9e2af" },
                b = { fg = "#cdd6f4", bg = "#313244" },
                c = { fg = "#cdd6f4", bg = "#1e1e2e" },
            },
            replace = {
                a = { fg = "#1e1e2e", bg = "#f38ba8" },
                b = { fg = "#cdd6f4", bg = "#313244" },
                c = { fg = "#cdd6f4", bg = "#1e1e2e" },
            },
            command = {
                a = { fg = "#1e1e2e", bg = "#94e2d5" },
                b = { fg = "#cdd6f4", bg = "#313244" },
                c = { fg = "#cdd6f4", bg = "#1e1e2e" },
            },
            inactive = {
                a = { fg = "#cdd6f4", bg = "#313244" },
                b = { fg = "#cdd6f4", bg = "#313244" },
                c = { fg = "#cdd6f4", bg = "#1e1e2e" },
            },
        },
        component_separators = { left = "│", right = "│" },
        section_separators = { left = "", right = "" },
        always_divide_middle = true,
        globalstatus = true,
    },
    sections = {
        lualine_a = { { "mode", fmt = function(mode)
            return mode:sub(1, 3)
        end } },
        lualine_b = {
            { "branch", icon = "" },
            {
                "diff",
                symbols = { added = " ", modified = "柳", removed = " " },
                color_added = "#a6e3a1",
                color_modified = "#f9e2af",
                color_removed = "#f38ba8",
            },
        },
        lualine_c = {
            {
                "diagnostics",
                symbols = {
                    error = "E ",
                    warn = "W ",
                    info = "I ",
                    hint = "H ",
                },
                color_error = "#f38ba8",
                color_warn = "#f9e2af",
                color_info = "#89b4fa",
                color_hint = "#a6e3a1",
            },
            {
                "filename",
                file_status = true,
                path = 1,
                shorting_target = 40,
                symbols = {
                    modified = " ●",
                    readonly = " 󰘴 ",
                    unnamed = "[No Name] ",
                },
            },
            { "searchcount" },
        },
        lualine_x = {
            {
                function()
                    local msg = ""
                    local buf_ft = vim.api.nvim_buf_get_option(0, "filetype")
                    if buf_ft == "TelescopePrompt" then
                        return ""
                    end
                    local ok, lsps = pcall(vim.lsp.get_active_clients)
                    if ok and #lsps > 0 then
                        for _, client in ipairs(lsps) do
                            if client.name ~= "null-ls" then
                                msg = msg .. " " .. client.name
                            end
                        end
                        msg = msg:gsub("^%s+", "")
                        return "[" .. msg .. "]"
                    end
                    return ""
                end,
                color = { fg = "#fab387" },
            },
            {
                function()
                    local bo = vim.bo
                    local line = vim.fn.line(".")
                    local total = vim.fn.line("$")
                    local percent = math.floor((line / total) * 100)
                    return string.format(" Ln %d, Col %d (%d%%%%)", line, vim.fn.col("."), percent)
                end,
                color = { fg = "#cdd6f4" },
            },
            {
                "fileformat",
                fmt = string.upper,
                color = { fg = "#cba6f7" },
            },
            {
                "filetype",
                colored = true,
                icon_only = true,
            },
            {
                "encoding",
                color = { fg = "#89dceb" },
            },
        },
        lualine_y = {
            { "progress", separator = " ", color = { fg = "#cdd6f4" } },
        },
        lualine_z = {
            { "location", padding = { left = 0, right = 1 } },
        },
    },
    inactive_sections = {
        lualine_a = { "filename" },
        lualine_b = {},
        lualine_c = {},
        lualine_x = { "location" },
        lualine_y = {},
        lualine_z = {},
    },
    extensions = { "neo-tree", "lazy" },
})
