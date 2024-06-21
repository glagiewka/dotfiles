local ls = require('luasnip')
local sn = ls.snippet_node
local s = ls.snippet
local t = ls.text_node
local i = ls.insert_node
local c = ls.choice_node
local fmt = require("luasnip.extras.fmt").fmt

local fileType = 'cs'

-- Attributes

ls.add_snippets(fileType, {
    s('attr', fmt([=[
    [{1}]
    ]=], {
        i(1, 'Attribute')
    }))
})

-- Classes

ls.add_snippets(fileType, {
    s('cls', fmt([[
    public class {1}
    {{
        {2}
    }}
    ]], {
        i(1, 'ClassName'),
        i(2, '')
    }))
})

ls.add_snippets(fileType, {
    s('mth', fmt([[
    {1} {2} {3}({4})
    {{
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
    {1} {2} {3} {{ get; set; }} {4}
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


-- Conditions

ls.add_snippets(fileType, {
    s('if', fmt([[
    if ({1})
    {{
        {2}
    }}
    ]], {
        i(1, 'Condition'),
        i(2, '')
    }))
})

ls.add_snippets(fileType, {
    s('else', fmt([[
    else
    {{
        {1}
    }}
    ]], {
        i(1, '')
    }))
})


ls.add_snippets(fileType, {
    s('elseif', fmt([[
    else if ({1})
    {{
        {2}
    }}
    ]], {
        i(1, 'Condition'),
        i(2, '')
    }))
})


-- Documentation

ls.add_snippets(fileType, {
    s('docsum', fmt([[
    /// <summary>
    /// {1}
    /// </summary>
    ]], {
        i(1, 'Summary')
    }))
})

ls.add_snippets(fileType, {
    s('docinh', fmt([[
    /// <inheritdoc />
    ]], {}))
})


-- Initializers

ls.add_snippets(fileType, {
    s('eempty', fmt([[
    Enumerable.Empty<{1}>();
    ]], {
        i(1, 'Type')
    }))
})

ls.add_snippets(fileType, {
    s('list', fmt([[
    new List<{1}>(){2}
    ]], {
        i(1, 'Type'),
        i(2, '')
    }))
})

ls.add_snippets(fileType, {
    s('liste', fmt([[
    new List<{1}>
    {{
        {2}
    }}{3}
    ]], {
        i(1, 'Type'),
        i(2, 'Element'),
        i(3, '')
    }))
})

ls.add_snippets(fileType, {
    s('new', fmt([[
    new()
    ]], {}))
})

ls.add_snippets(fileType, {
    s('newe', fmt([[
    new()
    {{
        {1}
    }}
    ]], {
        i(1, '')
    }))
})

ls.add_snippets(fileType, {
    s('sempty', fmt([[
    string.Empty
    ]], {}))
})


-- Logging

ls.add_snippets(fileType, {
    s('log', fmt([[
    Console.WriteLine({1});
    ]], {
        i(1, 'Message')
    }))
})

-- Loops

ls.add_snippets(fileType, {
    s('foreach', fmt([[
    foreach (var {1} in {2})
    {{
        {3}
    }}
    ]], {
        i(1, 'var'),
        i(2, 'Enumerable'),
        i(3, '')
    }))
})

-- Try/Catch

ls.add_snippets(fileType, {
    s('try', fmt([[
    try
    {{
        {3}
    }}
    catch ({1} e)
    {{
        {2}
    }}
    ]], {
        i(1, 'Exception'),
        i(2, ''),
        i(3, '')
    }))
})

ls.add_snippets(fileType, {
    s('catch', fmt([[
    catch ({1} e)
    {{
        {2}
    }}
    ]], {
        i(1, 'Exception'),
        i(2, ''),
    }))
})
