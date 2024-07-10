vim.g.mapleader = " "
vim.keymap.set("n", "<leader>u", vim.cmd.UndotreeToggle)

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

vim.keymap.set('n', 'gr', function()
    require('telescope.builtin').lsp_references({})
end)

vim.keymap.set("n", "<leader>pv", function()
    require("telescope").extensions.file_browser.file_browser()
end)

-- Vimspector
-- F5
vim.keymap.set("n", "<F5>", "<Plug>VimspectorContinue")
vim.keymap.set("n", "<F17>", "<Plug>VimspectorRestart")
vim.keymap.set("n", "<F30>", "<Plug>VimspectorPause")
-- F6
vim.keymap.set("n", "<F6>", "<Plug>VimspectorStop")
vim.keymap.set("n", "<F18>", ":VimspectorReset")
-- F7
vim.keymap.set("n", "<F7>", "<Plug>VimspectorBalloonEval")
-- F9
vim.keymap.set("n", "<F9>", "<Plug>VimspectorToggleBreakpoint")
vim.keymap.set("n", "<F21>", "<Plug>VimspectorAddFunctionBreakpoint")
-- F10
vim.keymap.set("n", "<F10>", "<Plug>VimspectorStepOver")
vim.keymap.set("n", "<F22>", "<Plug>VimspectorRunToCursor")
-- F11
vim.keymap.set("n", "<F11>", "<Plug>VimspectorStepInto")
vim.keymap.set("n", "<F23>", "<Plug>VimspectorStepOut")

