# Neovim Keymaps

## General

| Keymap | Action |
|--------|--------|
| `<Space>` | Leader key |
| `q` | Force quit current window |
| `Q` | Force quit all windows |
| `w` | Save (write) |
| `wq` | Write and quit |
| `wqa` | Write all and quit all |
| `<C-d>` | Page down (centered) |
| `<C-u>` | Page up (centered) |
| `n` | Next search result (centered) |
| `N` | Previous search result (centered) |
| `J` | Join lines below |
| `h` | Clear search highlight |
| `<leader>p` / `<leader>P` | Delete without yank |

## File Tree

| Keymap | Action |
|--------|--------|
| `<leader>e` | Toggle file explorer |
| `<leader>th` | Toggle file tree |
| `<leader>fe` | Focus file explorer |
| `l` / `o` | Open file/folder |
| `h` | Close folder / go up |
| `v` | Open in vertical split |
| `s` | Open in horizontal split |
| `q` | Close tree |

## Telescope (Fuzzy Finder)

| Keymap | Action |
|--------|--------|
| `<leader>ff` | Find files |
| `<leader>fg` | Live grep (search text) |
| `<leader>fb` | Find buffers |
| `<leader>fh` | Help tags |
| `<leader>fc` | Find string under cursor |
| `<C-p>` | Find files (alternative) |
| `<C-f>` | Live grep (alternative) |

## LSP

| Keymap | Action |
|--------|--------|
| `gd` | Go to definition |
| `gD` | Go to declaration |
| `gr` | Go to references |
| `gI` | Go to implementation |
| `K` | Hover documentation |
| `<C-k>` | Signature help |
| `<leader>rn` | Rename symbol |
| `<leader>lf` | Format buffer |
| `<leader>la` | Code action |
| `<leader>l` + `a` | LSP: Code action |
| `<leader>l` + `r` | LSP: Rename |
| `<leader>l` + `f` | LSP: Format |
| `<leader>l` + `i` | LSP: Info |
| `<leader>l` + `I` | Open Mason |
| `<leader>l` + `d` | Go to definition |
| `<leader>l` + `D` | Go to declaration |
| `<leader>l` + `s` | Signature help |
| `<leader>l` + `t` | Type definition |
| `<leader>l` + `R` | References |

## Git

| Keymap | Action |
|--------|--------|
| `<leader>g` + `s` | Open Neogit |
| `<leader>g` + `b` | Git blame |
| `<leader>g` + `d` | Git diff |
| `<leader>g` + `l` | Git log |

## Git Signs

| Keymap | Action |
|--------|--------|
| `]h` | Next hunk |
| `[h` | Previous hunk |
| `<leader>ghs` | Stage hunk |
| `<leader>ghr` | Reset hunk |
| `<leader>ghS` | Stage buffer |
| `<leader>ghu` | Undo stage hunk |
| `<leader>ghR` | Reset buffer |
| `<leader>ghp` | Preview hunk |
| `<leader>ghb` | Blame line |
| `<leader>ghd` | Diff this |
| `<leader>ghD` | Diff this (~) |
| `ih` | Select hunk (visual mode) |

## Terminal

| Keymap | Action |
|--------|--------|
| `<C-h>` | Toggle terminal |

## Undo Tree

| Keymap | Action |
|--------|--------|
| `<leader>u` | Toggle undo tree |

## Debug (DAP)

| Keymap | Action |
|--------|--------|
| `<leader>d` + `t` | Toggle DAP |
| `<leader>d` + `b` | Toggle breakpoint |
| `<leader>d` + `c` | Continue |
| `<leader>d` + `n` | Step over |
| `<leader>d` + `i` | Step into |
| `<leader>d` + `o` | Step out |
| `<leader>d` + `r` | Toggle REPL |

## Other

| Keymap | Action |
|--------|--------|
| `<leader>a` | Open Alpha dashboard |
| `<leader>h` | Clear search highlights |
| `J` | Join current line with next |
| `<C-j>` | Move line down |
| `<C-k>` | Move line up |
| `<A-j>` | Move line down (alt) |
| `<A-k>` | Move line up (alt) |
