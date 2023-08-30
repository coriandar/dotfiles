-- vertical movement centered
vim.keymap.set("n", "j", "jzz")
vim.keymap.set("n", "k", "kzz")
vim.keymap.set("n", "<C-d>", "<C-d>zz")
vim.keymap.set("n", "<C-u>", "<C-u>zz")

-- move highlighted
vim.keymap.set("v", "J", ":m '>+1<CR>gv=gv")
vim.keymap.set("v", "K", ":m '<-2<CR>gv=gv")
vim.keymap.set("v", "H", "<gv")
vim.keymap.set("v", "L", ">gv")

-- search terms centered
vim.keymap.set("n", "n", "nzzzv")
vim.keymap.set("n", "N", "Nzzzv")

-- delete into void, then paste
vim.keymap.set("v", "P", [["_dP]])

-- delete into void register
vim.keymap.set({"n", "v"}, "<leader>d", [["_d]])

-- :Ex
vim.keymap.set("n", "<leader>pv", vim.cmd.Ex)

-- never press, disabled
vim.keymap.set("n", "Q", "<nop>")
