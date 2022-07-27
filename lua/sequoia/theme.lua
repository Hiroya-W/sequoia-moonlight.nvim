local c = require("sequoia.colors").setup()

local M = {}

function M.setup()
    local theme = {}
    theme.base = {
        Comment = { fg = c.soft},
        Constant = { fg = c.blue },
        Number = { fg = c.orange },
        Type = { fg = c.purple },
        Error = { fg = c.pink },
        Keyword = { fg = c.blue },
        String = { fg = c.gray },
        Identifier = { fg = c.orange},
        StatusLine = { fg = c.base, bg = c.slight },
        WildMenu = { fg = c.fg, bg = c.bg },
        Pmenu = { fg = c.fg, bg = c.bg },
        PmenuSel = { fg = c.fg_select, bg = c.text },
        PmenuThumb = { fg = c.fg, bg = c.bg },
        DiffAdd = { bg = c.diff.add },
        DiffDelete = { fg = c.diff.delete },
        Normal = { fg = c.fg, bg = c.bg },
        Visual = { bg = c.bg2 },
        CursorLine = { bg = c.bg2 },
        ColorColumn = { bg = c.bg2 },
        SignColumn = { bg = c.bg },
        LineNr = { bg = c.slight },
        TabLine = { fg = c.slight, bg = "#0000" },
        TabLineSel = { fg = c.fg_select, bg = c.text },
        TabLineFill = { fg = c.slight, bg = "#0000" },
        TSPunctDelimiter = { fg = c.fg }
    }

    theme.plugins = {
        TSFuncMacro = { link = "Macro" },
        TSTagDelimiter = { link = "Type" },
        TSComment = { link = "Comment" },
        TSType = { link = "Type" },
        TelescopeNormal = { link = "Normal" },
        TSFloat = { link = "Number" },
        TSField = { link = "Constant" },
        Macro = { link = "Function" },
        TSPunctBracket = { link = "MyTag" },
        TSKeyword = { link = "Keyword" },
        Operator = { link = "Keyword" },
        CursorLineNr = { link = "Identifier" },
        TSString = { link = "String" },
        TSConstant = { link = "Constant" },
        TSNumber = { link = "Number" },
        TSConstBuiltin = { link = "TSVariableBuiltin" },
        TSFunction = { link = "Function" },
        TSOperator = { link = "Operator" },
        TSTag = { link = "MyTag" },
        Folded = { link = "Comment" },
        TSPunctSpecial = { link = "TSPunctDelimiter" },
        TSRepeat = { link = "Repeat" },
        TSParameter = { link = "Constant" },
        Repeat = { link = "Conditional" },
        TSProperty = { link = "TSField" },
        Whitespace = { link = "Comment" },
        TSConditional = { link = "Conditional" },
        TSParameterReference = { link = "TSParameter" },
        TSLabel = { link = "Type" },
        Conditional = { link = "Operator" },
        TSNamespace = { link = "TSType" },
        NonText = { link = "Comment" },
    }
    return theme
end

return M
