local alpha = require("alpha")
local dashboard = require("alpha.themes.dashboard")

local function header()
    return {
        "                                                    ",
        "  ███╗   ██╗███████╗██╗  ██╗██╗   ██╗███╗   ███╗    ",
        "  ████╗  ██║██╔════╝╚██╗██╔╝██║   ██║████╗ ████║   ",
        "  ██╔██╗ ██║█████╗   ╚███╔╝ ██║   ██║██╔████╔██║   ",
        "  ██║╚██╗██║██╔══╝   ██╔██╗ ██║   ██║██║╚██╔╝██║   ",
        "  ██║ ╚████║███████╗██╔╝ ██╗╚██████╔╝██║ ╚═╝ ██║   ",
        "  ╚═╝  ╚═══╝╚══════╝╚═╝  ╚═╝ ╚═════╝ ╚═╝     ╚═╝   ",
        "                                                    ",
    }
end

dashboard.section.header.val = header()

local function button(sc, txt, keybind, loc)
    local b = dashboard.button(sc, txt, keybind)
    b.opts.hl = "AlphaButtons"
    b.opts.hl_shortcut = "AlphaShortcut"
    return b
end

dashboard.section.buttons.val = {
    button("f", "  Find File", "<cmd>Telescope find_files<cr>", "Telescope find_files"),
    button("r", "  Recent Files", "<cmd>Telescope oldfiles<cr>", "Telescope oldfiles"),
    button("g", "  Find Text", "<cmd>Telescope live_grep<cr>", "Telescope live_grep"),
    button("e", "  Explorer", "<cmd>NvimTreeToggle<cr>", "NvimTreeToggle"),
    button("u", "  Update Plugins", "<cmd>Lazy sync<cr>", "Lazy sync"),
    button("q", "  Quit", "<cmd>qa!<cr>", "qa"),
}

dashboard.section.footer.val = {
    "",
    "  Tips: <leader>ff find files  |  <leader>fg live grep  |  <leader>e explorer",
}

alpha.setup(dashboard.opts)

vim.keymap.set("n", "<leader>a", "<cmd>Alpha<cr>", { desc = "Alpha Dashboard" })

vim.api.nvim_create_autocmd({ "User" }, {
    pattern = { "AlphaReady" },
    callback = function()
        vim.cmd([[nnoremap <buffer> q <cmd>qa!<cr>]])
    end,
})

vim.api.nvim_create_autocmd({ "BufEnter" }, {
    pattern = { "alpha" },
    callback = function()
        vim.opt_local.buflisted = false
        vim.opt_local.swapfile = false
        vim.opt_local.modifiable = false
    end,
})

vim.api.nvim_create_autocmd({ "FileType" }, {
    pattern = { "alpha" },
    callback = function()
        vim.keymap.set("n", "q", "<cmd>qa!<cr>", { buffer = 0 })
        vim.keymap.set("n", "<Esc>", "<cmd>qa!<cr>", { buffer = 0 })
    end,
})
