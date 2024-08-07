local keymap = vim.keymap

-- keymap.set("n", "<leader>pv", vim.cmd.Ex, { desc = "Start netrw" })

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
keymap.set("n",
    "<leader>pv",
    ":Ex<CR>",
    { noremap = true, desc = "open file browser" })

keymap.set("n", "<A-k>", "<cmd>cnext<CR>zz")
keymap.set("n", "<A-j>", "<cmd>cprev<CR>zz")
keymap.set("n", "<leader>k", "<cmd>lnext<CR>zz")
keymap.set("n", "<leader>j", "<cmd>lprev<CR>zz")

keymap.set("n", "<leader>rr", [[:%s/\<<C-r><C-w>\>/<C-r><C-w>/gI<Left><Left><Left>]], { desc = "replace current word" })
keymap.set("n", "<leader>x", "<cmd>!chmod +x %<CR>", { silent = true, desc = "chmod +x current file" })
keymap.set("n", "<leader>cm", "<cmd>make<CR>", { desc = "run make command" })
keymap.set("n", "<leader>cc", "<cmd>!gcc -o %< % && %< <CR>", { desc = "compile current file and execute it" })

keymap.set("n", "<leader>Sv", "<C-w>v", { desc = "create split vertically" })
keymap.set("n", "<leader>Sh", "<C-w>s", { desc = "create split horizontally" })
keymap.set("n", "<leader>Se", "<C-w>=", { desc = "even out buffers" })
keymap.set("n", "<leader>Sx", ":close<CR>", { desc = "close current split" })

keymap.set("n", "<leader>sm", "<Cmd>lua require('maximize').toggle()<CR>", { desc = "maximize current buffer" })

keymap.set("n", "+", "<C-a>", { desc = "increment number on cursor" })
keymap.set("n", "-", "<C-x>", { desc = "decrease number on cursor" })

-- move splits around
keymap.set("n", "<left>", "4<C-w><")
keymap.set("n", "<right>", "4<C-w>>")
keymap.set("n", "<up>", "4<C-w>+")
keymap.set("n", "<down>", "4<C-w>-")

keymap.set("n", "<leader>gsj", "<cmd>GoTagAdd json <CR>", { desc = "Add json struct tags" })
keymap.set("n", "<leader>gsy", "<cmd>GoTagAdd yaml <CR>", { desc = "Add yaml struct tags" })
keymap.set("n", "<A-.>", "<cmd>bnext<CR>", { desc = "Go to next Buffer" })
keymap.set("n", "<A-,>", "<cmd>bprev<CR>", { desc = "Go to previous Buffer" })
keymap.set("n", "<A-x>", "<cmd>bdelete<CR>", { desc = "Delete current buffer" })
keymap.set("n", "<leader>tA", "<cmd>GoTestAdd<CR>", { desc = "Add Go Test for current function" })

keymap.set("n", "<leader>gr", "<cmd>lua vim.lsp.buf.rename()<CR>",
    { desc = "Renames all references to the symbol under the cursor" })
