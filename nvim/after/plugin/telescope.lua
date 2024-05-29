require('telescope').setup{
    pickers = {
        git_files = {
            hidden = true
        },

        find_files = {
            hidden = true
        },

        live_grep = {
            additional_args = function()
                return {"--hidden"}
            end
        },
    },
}
