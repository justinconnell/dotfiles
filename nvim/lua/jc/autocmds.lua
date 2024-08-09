-- trim trailing spaces on file write
vim.api.nvim_create_autocmd({ "BufWritePre" }, {
	callback = function()
		vim.cmd([[%s/\s\+$//e]])
	end,
})

-- highlight text on yank
vim.api.nvim_create_autocmd("textyankpost", {
	desc = "highlight when yanking text",
	group = vim.api.nvim_create_augroup("highlight-yank", { clear = true }),
	callback = function()
		vim.highlight.on_yank()
	end,
})
