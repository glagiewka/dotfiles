require('telescope').setup{
    pickers = {
        git_files = {
            hidden = true
        },

        find_files = {
            hidden = true
        },

        lsp_references = {
            show_line = false,
        },

        live_grep = {
            additional_args = function()
                return {"--hidden"}
            end
        },
    },
}
