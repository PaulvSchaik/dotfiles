vim.g.mapleader = " "
vim.keymap.set("n", "<leader>x", vim.cmd.NvimTreeToggle)

--obsidian
vim.keymap.set("n", "<leader>oh", vim.cmd.ObsidianToday)
vim.keymap.set('n', '<leader>oc', function() vim.cmd('ObsidianDailies -10 10') end, opt)
vim.keymap.set('n', '<leader>oo', function() vim.cmd('ObsidianFollowLink vsplit') end, opt)
vim.keymap.set('n', '<leader>oi', vim.cmd.ObsidianPasteImg)
vim.keymap.set('n', '<leader>ot', vim.cmd.ObsidianTemplate)
vim.keymap.set('n', '<leader>of', vim.cmd.ObsidianSearch)
vim.keymap.set('n', '<leader>os', vim.cmd.ObsidianSearch)
vim.keymap.set('n', '<leader>ol', vim.cmd.ObsidianLinkNew)

