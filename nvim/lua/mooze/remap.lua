vim.g.mapleader = " "
vim.keymap.set("n", "<leader>pv", vim.cmd.Ex)

-- DAP
vim.keymap.set("n", "<leader>db", function()
	require('dap').toggle_breakpoint()
end)

vim.keymap.set("n", "<leader>dbc", function()
	require('dap').set_breakpoint(vim.fn.input('Breakpoint condition: '))
end)

vim.keymap.set("n", "<leader>dbl", function()
	require('dap').set_breakpoint(nil, nil, vim.fn.input('Log point message: '))
end)

vim.keymap.set("n", "<leader>drl", function()
	require('dap').repl.open()
end)

vim.keymap.set("n", "<F5>", function()
	require('dap').continue()
end)

vim.keymap.set("n", "<F10>", function()
	require('dap').step_over()
end)

vim.keymap.set("n", "<F11>", function()
	require('dap').step_into()
end)

vim.keymap.set("n", "<F12>", function()
	require('dap').step_out()
end)

