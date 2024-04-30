local ls = require('luasnip')
local sn = ls.snippet_node
local s = ls.snippet
local t = ls.text_node
local i = ls.insert_node
local c = ls.choice_node
local fmt = require("luasnip.extras.fmt").fmt

local fileType = 'cs'

ls.add_snippets(fileType, {
    s('cls', fmt([[
    public class {1} {{
        {2}
    }}
    ]],{ i(1, 'ClassName'), i(2, '') } ))
})

ls.add_snippets(fileType, {
    s('mth', fmt([[
    {1} {2} {3}({4}) {{
        {5}
    }}
    ]], {
        c(1, {
            t('public'),
            t('private'),
            t('protected')
        }),
        c(2, {
            sn(nil, { i(1, 'Type') }),
            t('async Task'),
            sn(nil, { t('async Task<'), i(1, 'Type'), t('>')});
        }),
        i(3, 'Name'),
        c(4, {
            t(''),
            sn(nil, { i(1, "Args") })
        }),
        i(5, '')
    }))
})

ls.add_snippets(fileType, {
    s('prop', fmt([[
    {1} {2} {3} {{ get; set; }}
    {4}
    ]], {
        c(1, {
            t('public'),
            t('private')
        }),
        i(2, 'Type'),
        i(3, 'Name'),
        i(4, '')
    }))
})
