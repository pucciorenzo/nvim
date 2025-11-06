-- harpoon
require("plugins.harpoon")
local mark = require("harpoon.mark")
local ui = require("harpoon.ui")

vim.keymap.set("n", "<leader>a", mark.add_file)
vim.keymap.set("n", "<leader>hh", ui.toggle_quick_menu)
vim.keymap.set("n", "<leader>1", function()
	ui.nav_file(1)
end)
vim.keymap.set("n", "<leader>2", function()
	ui.nav_file(2)
end)
vim.keymap.set("n", "<leader>3", function()
	ui.nav_file(3)
end)
vim.keymap.set("n", "<leader>4", function()
	ui.nav_file(4)
end)
vim.keymap.set("n", "<leader>5", function()
	ui.nav_file(5)
end)

-- lsp
vim.keymap.set("n", "<leader>f", vim.lsp.buf.format, { desc = "[F]ormat file" })
vim.keymap.set("n", "K", vim.lsp.buf.hover, {})
vim.keymap.set("n", "<leader>gd", vim.lsp.buf.definition, {})
vim.keymap.set("n", "<leader>gr", vim.lsp.buf.references, {})
vim.keymap.set("n", "<leader>ca", vim.lsp.buf.code_action, {})

-- telescope
require("plugins.telescope")
vim.keymap.set("n", "<leader>?", require("telescope.builtin").oldfiles, { desc = "[?] Find recently opened files" })
vim.keymap.set("n", "<leader>sd", require("telescope.builtin").diagnostics, { desc = "[S]earch [D]iagnostics" })
vim.keymap.set("n", "<leader>jl", require("telescope.builtin").jumplist, { desc = "[J]ump [L]ist" })
vim.keymap.set("n", "<leader>km", require("telescope.builtin").keymaps, { desc = "[K]ey[M]aps" })
vim.keymap.set("n", "<leader>rg", require("telescope.builtin").registers, { desc = "[R]egisters" })
vim.keymap.set("n", "<leader>ht", require("telescope.builtin").help_tags, { desc = "[H]elp [T]ags" })
vim.keymap.set("n", "<leader>pf", require("telescope.builtin").find_files, { desc = "[P] [F]ind files" })
vim.keymap.set("n", "<leader>gg", require("telescope.builtin").git_files, { desc = "[G] [G]it files" })
vim.keymap.set("n", "<leader>pg", require("telescope.builtin").live_grep, { desc = "[P] [G]rep inside files" })

-- diagnostic
vim.keymap.set("n", "<leader>se", function() vim.diagnostic.open_float(nil, { focusable = false }) end, { desc = "[S]how [E]rror diagnostic" })


-- exit
vim.keymap.set("n", "<leader>pv", vim.cmd.Ex, { desc = "Return to explorer" })

-- dehighlight
vim.keymap.set("n", "<leader><Space>", ":noh<CR>", { silent = true })

-- centering text
vim.keymap.set("n", "n", "nzzzv")
vim.keymap.set("n", "N", "Nzzzv")
vim.keymap.set("n", "J", "mzJ`z")
vim.keymap.set("n", "<C-d>", "<C-d>zz")
vim.keymap.set("n", "<C-u>", "<C-u>zz")

-- copy, paste and delete
vim.keymap.set({"n", "v"}, "<leader>d", [["_d]])
vim.keymap.set("x", "<leader>p", [["_dP]]) -- allow to paste text over something else without overwrite the buffer
vim.keymap.set({ "n", "v" }, "<leader>y", [["+y]]) -- copy in os buffer
vim.keymap.set("n", "<leader>Y", [["+Y]])
vim.keymap.set("v", "<leader>c", ":w !clip.exe<CR><CR>", { silent = true })

-- git
vim.keymap.set("n", "<leader>gp", ":Gitsigns preview_hunk<CR>", { silent = true, desc = "[G]it [P]review" })
vim.keymap.set("n", "<leader>gs", vim.cmd.Git, { desc = "[G]it [S]tatus" })
