vim.g.mapleader = " "
vim.keymap.set("n", "<leader>pv", vim.cmd.Ex)

-- DAP
vim.keymap.set("n", "<leader>db", function()
    require('dap').toggle_breakpoint()
end)

vim.keymap.set("n", "<leader>dc", function()
    require('dap').set_breakpoint(vim.fn.input('Breakpoint condition: '))
end)

vim.keymap.set("n", "<leader>dl", function()
    require('dap').set_breakpoint(nil, nil, vim.fn.input('Log point message: '))
end)

vim.keymap.set("n", "<leader>dr", function()
    require('dap').repl.open()
end)

vim.keymap.set({'n', 'v'}, '<Leader>dh', function()
    require('dap.ui.widgets').hover()
end)

vim.keymap.set({'n', 'v'}, '<Leader>dp', function()
    require('dap.ui.widgets').preview()
end)

vim.keymap.set('n', '<Leader>df', function()
    local widgets = require('dap.ui.widgets')
    widgets.centered_float(widgets.frames)
end)

vim.keymap.set('n', '<Leader>ds', function()
    local widgets = require('dap.ui.widgets')
    widgets.centered_float(widgets.scopes)
end)

vim.keymap.set("n", "<F5>", function()
    require('dap').continue()
end)

vim.keymap.set("n", "<F17>", function()
    require('dap').terminate()
end)

vim.keymap.set("n", "<F6>", function()
    require('dap').run_to_cursor()
end)

vim.keymap.set("n", "<F22>", function()
    require('dap').step_over()
end)

vim.keymap.set("n", "<F23>", function()
    require('dap').step_into()
end)

vim.keymap.set("n", "<F24>", function()
    require('dap').step_out()
end)
-- Telescope
vim.keymap.set('n', '<leader>pf', function()
    require('telescope.builtin').find_files({})
end)

vim.keymap.set('n', '<C-p>', function()
    require('telescope.builtin').git_files({})
end)

vim.keymap.set('n', '<leader>ps', function()
    require('telescope.builtin').live_grep({})
end)


