vim.g.mapleader = " "
vim.g.ttimeoutlen = 500
vim.keymap.set("n", "<leader>fs", vim.cmd.Ex)
vim.keymap.set("n", "<leader>vm", function()
	if vim.o.paste then
        vim.cmd.set("nopaste")	
    else 
        vim.cmd.set("paste")
    end
end)

