local harpoon = require("harpoon")

-- REQUIRED
harpoon:setup()
-- REQUIRED

vim.keymap.set("n", "<leader>a", function() harpoon:list():add() end)
vim.keymap.set("n", "<leader>r", function() harpoon:list():remove() end)
vim.keymap.set("n", "<S-e>", function() harpoon.ui:toggle_quick_menu(harpoon:list()) end)

vim.keymap.set("n", "<A-a>", function() harpoon:list():select(1) end)
vim.keymap.set("n", "<A-s>", function() harpoon:list():select(2) end)
vim.keymap.set("n", "<A-q>", function() harpoon:list():select(3) end)
vim.keymap.set("n", "<A-w>", function() harpoon:list():select(4) end)

-- Toggle previous & next buffers stored within Harpoon list
vim.keymap.set("n", "<S-n>", function() harpoon:list():prev() end)
vim.keymap.set("n", "<S-p>", function() harpoon:list():next() end)
