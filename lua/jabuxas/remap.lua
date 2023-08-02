local keymap = vim.keymap

keymap.set("n", "<leader>pv", vim.cmd.Ex, { desc = "Start netrw" })
keymap.set("n", "sf", vim.cmd.Ex, { desc = "Start netrw" })

keymap.set("v", "J", ":m '>+1<CR>gv=gv")
keymap.set("v", "K", ":m '<-2<CR>gv=gv")

keymap.set("n", "J", "mzJ`z")
keymap.set("n", "<C-d>", "<C-d>zz")
keymap.set("n", "<C-u>", "<C-u>zz")
keymap.set("n", "n", "nzzzv")
keymap.set("n", "N", "Nzzzv")

keymap.set("x", "<leader>p", [["_dP]])
keymap.set({ "n", "v" }, "<leader>yy", [["+y]], { desc = "copy to clipboard" })
keymap.set("n", "<leader>Y", [["+Y]])
keymap.set({ "n", "v" }, "<leader>dd", [["_d]], { desc = "delete" })
keymap.set("i", "<C-c>", "<Esc>")

keymap.set("n", "Q", "<nop>")
keymap.set("n", "<C-f>", "<cmd>silent !tmux neww tmux-sessionizer<CR>")
keymap.set("n", "<leader>f", vim.lsp.buf.format, { desc = "format current buffer" })

keymap.set("n", "<A-k>", "<cmd>cnext<CR>zz")
keymap.set("n", "<A-j>", "<cmd>cprev<CR>zz")
keymap.set("n", "<leader>k", "<cmd>lnext<CR>zz")
keymap.set("n", "<leader>j", "<cmd>lprev<CR>zz")

keymap.set("n", "<leader>rr", [[:%s/\<<C-r><C-w>\>/<C-r><C-w>/gI<Left><Left><Left>]], { desc = "replace current word" })
keymap.set("n", "<leader>x", "<cmd>!chmod +x %<CR>", { silent = true, desc = "chmod +x current file" })

keymap.set("t", "<leader><Esc>", [[<C-\><C-n>]], { desc = "exit insert mode on builtin terminal" })

keymap.set("n", "<leader>Sv", "<C-w>v", { desc = "create split vertically" })
keymap.set("n", "<leader>Sh", "<C-w>s", { desc = "create split horizontally" })
keymap.set("n", "<leader>Se", "<C-w>=", { desc = "even out buffers" })
keymap.set("n", "<leader>Sx", ":close<CR>", { desc = "close current split" })

keymap.set("n", "<leader>sm", "<Cmd>lua require('maximize').toggle()<CR>", { desc = "maximize current buffer" })

keymap.set("n", "+", "<C-a>", { desc = "increment number on cursor" })
keymap.set("n", "-", "<C-x>", { desc = "decrease number on cursor" })

-- move splits around
keymap.set("n", "<left>", "<C-w><")
keymap.set("n", "<right>", "<C-w>>")
keymap.set("n", "<up>", "<C-w>+")
keymap.set("n", "<down>", "<C-w>-")
