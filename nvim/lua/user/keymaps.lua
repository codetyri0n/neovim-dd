local wk = require("which-key")

wk.register({
    ["<leader>e"] = { "<cmd>NvimTreeToggle<cr>", "Toggle Explorer" },
    ["<leader>fe"] = { "<cmd>NvimTreeFocus<cr>", "Focus Explorer" },
    ["<leader>ff"] = { "<cmd>Telescope find_files<cr>", "Find Files" },
    ["<leader>fg"] = { "<cmd>Telescope live_grep<cr>", "Live Grep" },
    ["<leader>fb"] = { "<cmd>Telescope buffers<cr>", "Find Buffers" },
    ["<leader>fh"] = { "<cmd>Telescope help_tags<cr>", "Help Tags" },
    ["<leader>fc"] = { "<cmd>Telescope grep_string<cr>", "Find String" },
    ["<leader>th"] = { "<cmd>NvimTreeToggle<cr>", "Toggle Tree" },
    ["<leader>q"] = { "<cmd>q!<cr>", "Quit" },
    ["<leader>Q"] = { "<cmd>qa!<cr>", "Quit All" },
    ["<leader>w"] = { "<cmd>w<cr>", "Save" },
    ["<leader>h"] = { "<cmd>nohlsearch<cr>", "No Highlight" },
    ["<leader>u"] = { "<cmd>UndotreeToggle<cr>", "Undo Tree" },
    ["<leader>p"] = { '"_d', "Delete without yank" },
    ["<leader>P"] = { '"_d', "Delete without yank" },
    ["<C-p>"] = { "<cmd>Telescope find_files<cr>", "Find Files" },
    ["<C-f>"] = { "<cmd>Telescope live_grep<cr>", "Live Grep" },
    ["<C-h>"] = { "<cmd>ToggleTerm<cr>", "Toggle Terminal" },
    ["<C-j>"] = { "<cmd>m .+1<cr>==", "Move line down" },
    ["<C-k>"] = { "<cmd>m .-2<cr>==", "Move line up" },
    ["<A-j>"] = { "<cmd>m .+1<cr>==", "Move line down" },
    ["<A-k>"] = { "<cmd>m .-2<cr>==", "Move line up" },
    ["<C-d>"] = { "<C-d>zz", "Page down" },
    ["<C-u>"] = { "<C-u>zz", "Page up" },
    ["n"] = { "nzzzv", "Next search" },
    ["N"] = { "Nzzzv", "Prev search" },
    ["J"] = { "mzJ`z", "Join lines" },
})

wk.register({
    ["<leader>d"] = {
        name = "Debug",
        t = { "<cmd>lua require('dap').toggle()<cr>", "Toggle DAP" },
        b = { "<cmd>lua require('dap').toggle_breakpoint()<cr>", "Breakpoint" },
        c = { "<cmd>lua require('dap').continue()<cr>", "Continue" },
        n = { "<cmd>lua require('dap').step_over()<cr>", "Step Over" },
        i = { "<cmd>lua require('dap').step_into()<cr>", "Step Into" },
        o = { "<cmd>lua require('dap').step_out()<cr>", "Step Out" },
        r = { "<cmd>lua require('dap').repl.toggle()<cr>", "REPL" },
    },
    ["<leader>g"] = {
        name = "Git",
        s = { "<cmd>Neogit<cr>", "Status" },
        b = { "<cmd>Git blame<cr>", "Blame" },
        d = { "<cmd>Git diff<cr>", "Diff" },
        l = { "<cmd>Git log<cr>", "Log" },
    },
    ["<leader>l"] = {
        name = "LSP",
        a = { "<cmd>lua vim.lsp.buf.code_action()<cr>", "Code Action" },
        r = { "<cmd>lua vim.lsp.buf.rename()<cr>", "Rename" },
        f = { "<cmd>lua vim.lsp.buf.format()<cr>", "Format" },
        i = { "<cmd>LspInfo<cr>", "Info" },
        I = { "<cmd>Mason<cr>", "Mason" },
        d = { "<cmd>lua vim.lsp.buf.definition()<cr>", "Definition" },
        D = { "<cmd>lua vim.lsp.buf.declaration()<cr>", "Declaration" },
        s = { "<cmd>lua vim.lsp.buf.signature_help()<cr>", "Signature" },
        t = { "<cmd>lua vim.lsp.buf.type_definition()<cr>", "Type Definition" },
        R = { "<cmd>lua vim.lsp.buf.references()<cr>", "References" },
    },
}, { prefix = "<leader>" })

vim.keymap.set("n", "<leader>lf", vim.lsp.buf.format, { desc = "Format buffer" })
vim.keymap.set({ "n", "v" }, "<leader>la", vim.lsp.buf.code_action, { desc = "Code action" })
vim.keymap.set("n", "gd", vim.lsp.buf.definition, { desc = "Goto definition" })
vim.keymap.set("n", "gD", vim.lsp.buf.declaration, { desc = "Goto declaration" })
vim.keymap.set("n", "gr", vim.lsp.buf.references, { desc = "Goto references" })
vim.keymap.set("n", "gI", vim.lsp.buf.implementation, { desc = "Goto implementation" })
vim.keymap.set("n", "K", vim.lsp.buf.hover, { desc = "Hover docs" })
vim.keymap.set("n", "<c-k>", vim.lsp.buf.signature_help, { desc = "Signature help" })
vim.keymap.set("n", "<leader>rn", vim.lsp.buf.rename, { desc = "Rename" })
vim.keymap.set("n", "wq", "<cmd>write<cr><cmd>quit<cr>", { desc = "Write and quit" })
vim.keymap.set("n", "wqa", "<cmd>wall<cr><cmd>qa<cr>", { desc = "Write all and quit" })
