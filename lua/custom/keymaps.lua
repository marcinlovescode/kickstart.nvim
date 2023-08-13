vim.keymap.set("n", "<leader>pv", vim.cmd.Ex)
-- Move lines up/down  in a vertical mode
vim.keymap.set("v", "J", ":m '>+1<CR>gv=gv")
vim.keymap.set("v", "K", ":m '<-2<CR>gv=gv")

-- Keep cursor in the middle after a half page jump
vim.keymap.set("n", "<C-d>", "<C-d>zz")
vim.keymap.set("n", "<C-u>", "<C-u>zz")
-- Keep cursor in the middle after a search
vim.keymap.set("n", "n", "nzzzv")
vim.keymap.set("n", "N", "Nzzzv")

-- Copy replaced text into a void register to preserve copied text
vim.keymap.set({ "n", "v" }, "<leader>y", [["+y]])
vim.keymap.set("n", "<leader>Y", [["+Y]])
-- Delete into the  void register
vim.keymap.set({ "n", "v" }, "<leader>d", [["_d]])

-- Format code
vim.keymap.set("n", "<leader>f", vim.lsp.buf.format)

-- Replace the current word
vim.keymap.set("n", "<leader>s", [[:%s/\<<C-r><C-w>\>/<C-r><C-w>/gI<Left><Left><Left>]])