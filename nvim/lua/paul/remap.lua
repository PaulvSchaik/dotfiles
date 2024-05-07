vim.g.mapleader = " "

--file-explorer
vim.keymap.set("n", "<leader>et", vim.cmd.NvimTreeToggle, { desc = "Tree toggle" })
vim.keymap.set("n", "<leader>ec", vim.cmd.NvimTreeCollapse, { desc = "Tree samenvouwen" })
vim.keymap.set("n", "<leader>ef", vim.cmd.NvimTreeFindFile, { desc = "Tree open huidig bestand" })
vim.keymap.set("n", "<leader>er", vim.cmd.NvimTreeRefresh, { desc = "Tree refresh" })
vim.keymap.set("n", "<leader>ee", vim.cmd.NvimTreeFocus, { desc = "Tree focus" })

--obsidian
vim.keymap.set("n", "<leader>oh", vim.cmd.ObsidianToday, { desc = "Obsidian vandaag" })
vim.keymap.set('n', '<leader>oc', function() vim.cmd('ObsidianDailies -10 10') end, opt, { desc = "Obsidian kies een dag" })
vim.keymap.set('n', '<leader>oo', function() vim.cmd('ObsidianFollowLink vsplit') end, opt, { desc = "Obsidian volg link" })
vim.keymap.set('n', '<leader>oi', vim.cmd.ObsidianPasteImg, { desc = "Obsidian plak afbeelding" })
vim.keymap.set('n', '<leader>ot', vim.cmd.ObsidianTemplate, { desc = "Obsidian template" })
vim.keymap.set('n', '<leader>of', vim.cmd.ObsidianSearch, { desc = "Obsidian zoek..." })
vim.keymap.set('n', '<leader>os', vim.cmd.ObsidianSearch, { desc = "Obsidian zoek..." })
vim.keymap.set('n', '<leader>ol', vim.cmd.ObsidianLinkNew, { desc = "Obsidian nieuwe link" })

--window-management
vim.keymap.set("n", "<leader>sv", "<C-w>v", { desc = "venster verticaal splitsen" }) -- venster verticaal splitsen
vim.keymap.set("n", "<leader>sh", "<C-w>s", { desc = "venster horizontaal splitsen" }) -- venster horizontaal splitsen
vim.keymap.set("n", "<leader>se", "<C-w>=", { desc = "venster gelijke grootte maken" }) -- venster allemaal zelfde grootte maken
vim.keymap.set("n", "<leader>sx", "<cmd>close<CR>", { desc = "huidig venster sluiten" }) -- huidig venster sluiten

vim.keymap.set("n", "<leader>to", "<cmd>tabnew<CR>", { desc = "open nieuw tab" }) -- open nieuw tab
vim.keymap.set("n", "<leader>tx", "<cmd>tabclose<CR>", { desc = "sluit huidige tab" }) -- sluit huidige tab
vim.keymap.set("n", "<leader>tn", "<cmd>tabn<CR>", { desc = "volgende tab" }) --  volgende tab
vim.keymap.set("n", "<leader>tp", "<cmd>tabp<CR>", { desc = "vorige tab" }) --  vorige tab
vim.keymap.set("n", "<leader>tf", "<cmd>tabnew %<CR>", { desc = "huidige buffer naar nieuwe tab" }) --  huidige buffer naar nieuwe tab
vim.keymap.set("n", "<leader>te", "<cmd>tabe ", { desc = "open een bestand in een nieuw tab" })

--clipboard
vim.keymap.set("n", "<leader>yn", "<cmd>set clipboard=<CR>", { desc = "clipboard binnen Neovim" })
vim.keymap.set("n", "<leader>ys", "<cmd>set clipboard=unnamedplus<CR>", { desc = "clipboard van systeem" })
vim.keymap.set("n", "<leader>yy", "<cmd>set clipboard<CR>", { desc = "welk clipboard?" })
