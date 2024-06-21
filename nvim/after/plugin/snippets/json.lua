local ls = require('luasnip')
local sn = ls.snippet_node
local s = ls.snippet
local t = ls.text_node
local i = ls.insert_node
local c = ls.choice_node
local fmt = require("luasnip.extras.fmt").fmt

local fileType = 'json'

ls.add_snippets(fileType, {
    s('propo', fmt([[
    "{1}": {{
        {2}
    }}
    ]], {
        i(1, 'Name'),
        i(2, 'Content')
    }))
})

ls.add_snippets(fileType, {
    s('propa', fmt([=[
    "{1}": [
        {2}
    ]
    ]=], {
        i(1, 'Name'),
        i(2, 'Content')
    }))
})

