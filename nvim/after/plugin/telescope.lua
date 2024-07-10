require('telescope').setup{
    defaults = {
        -- layout_strategy = 'vertical',
    },
    pickers = {
        git_files = {
            hidden = true
        },

        find_files = {
            hidden = true
        },

        lsp_references = {
            initial_mode = 'normal',
            show_line = false,
        },

        live_grep = {
            additional_args = function()
                return {"--hidden"}
            end
        },
    },
    extensions = {
        file_browser = {
            grouped = true,
            initial_mode = 'normal',
            path = '%:p:h',
            select_buffer = true
        }
    }
}
