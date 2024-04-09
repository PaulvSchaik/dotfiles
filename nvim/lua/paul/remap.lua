vim.g.mapleader = " "

--file-explorer
vim.keymap.set("n", "<leader>ee", vim.cmd.NvimTreeToggle)
vim.keymap.set("n", "<leader>ec", vim.cmd.NvimTreeCollapse)
vim.keymap.set("n", "<leader>ef", vim.cmd.NvimTreeFindFile)
vim.keymap.set("n", "<leader>er", vim.cmd.NvimTreeRefresh)

--obsidian
vim.keymap.set("n", "<leader>oh", vim.cmd.ObsidianToday)
vim.keymap.set('n', '<leader>oc', function() vim.cmd('ObsidianDailies -10 10') end, opt)
vim.keymap.set('n', '<leader>oo', function() vim.cmd('ObsidianFollowLink vsplit') end, opt)
vim.keymap.set('n', '<leader>oi', vim.cmd.ObsidianPasteImg)
vim.keymap.set('n', '<leader>ot', vim.cmd.ObsidianTemplate)
vim.keymap.set('n', '<leader>of', vim.cmd.ObsidianSearch)
vim.keymap.set('n', '<leader>os', vim.cmd.ObsidianSearch)
vim.keymap.set('n', '<leader>ol', vim.cmd.ObsidianLinkNew)

--window-management
vim.keymap.set("n", "<leader>sv", "<C-w>v", { desc = "Split window vertically" }) -- split window vertically
vim.keymap.set("n", "<leader>sh", "<C-w>s", { desc = "Split window horizontally" }) -- split window horizontally
vim.keymap.set("n", "<leader>se", "<C-w>=", { desc = "Make splits equal size" }) -- make split windows equal width & height
vim.keymap.set("n", "<leader>sx", "<cmd>close<CR>", { desc = "Close current split" }) -- close current split window

vim.keymap.set("n", "<leader>to", "<cmd>tabnew<CR>", { desc = "Open new tab" }) -- open new tab
vim.keymap.set("n", "<leader>tx", "<cmd>tabclose<CR>", { desc = "Close current tab" }) -- close current tab
vim.keymap.set("n", "<leader>tn", "<cmd>tabn<CR>", { desc = "Go to next tab" }) --  go to next tab
vim.keymap.set("n", "<leader>tp", "<cmd>tabp<CR>", { desc = "Go to previous tab" }) --  go to previous tab
vim.keymap.set("n", "<leader>tf", "<cmd>tabnew %<CR>", { desc = "Open current buffer in new tab" }) --  move current buffer to new tab

