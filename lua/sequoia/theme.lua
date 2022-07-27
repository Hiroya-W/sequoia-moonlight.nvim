local c = require("sequoia.colors").setup()

local M = {}

function M.setup()
    local theme = {}
    theme.base = {
        Normal = { fg = c.fg, bg = c.bg },
        Cursor = { fg = c.editorCursor.fg, bg = c.editorCursor.bg }, -- カーソル位置
        CursorLine = { bg = c.bg_cursor_line }, -- カーソルがある行
        CursorLineNr = { fg = c.editorLineNumber.active_fg, bg = c.bg }, -- カーソルがある行の行番号
        CursorColumn = { bg = c.bg_cursor_line }, -- カーソルがある列
        ColorColumn = { bg = c.bg_cursor_line }, -- TODO
        LineNr = { fg = c.editorLineNumber.fg, bg = c.bg }, -- 行番号(カーソル行はCursorLineNr)
        VertSplit = { fg = c.fg, bg = c.bg },
        MatchParen = {bg = "#5f5073"}
    }

    theme.plugins = {
        -- TSFuncMacro = { link = "Macro" },
        -- TSTagDelimiter = { link = "Type" },
        -- TSComment = { link = "Comment" },
        -- TSType = { link = "Type" },
        -- TelescopeNormal = { link = "Normal" },
        -- TSFloat = { link = "Number" },
        -- TSField = { link = "Constant" },
        -- Macro = { link = "Function" },
        -- TSPunctBracket = { link = "MyTag" },
        -- TSKeyword = { link = "Keyword" },
        -- Operator = { link = "Keyword" },
        -- CursorLineNr = { link = "Identifier" },
        -- TSString = { link = "String" },
        -- TSConstant = { link = "Constant" },
        -- TSNumber = { link = "Number" },
        -- TSConstBuiltin = { link = "TSVariableBuiltin" },
        -- TSFunction = { link = "Function" },
        -- TSOperator = { link = "Operator" },
        -- TSTag = { link = "MyTag" },
        -- Folded = { link = "Comment" },
        -- TSPunctSpecial = { link = "TSPunctDelimiter" },
        -- TSRepeat = { link = "Repeat" },
        -- TSParameter = { link = "Constant" },
        -- Repeat = { link = "Conditional" },
        -- TSProperty = { link = "TSField" },
        -- Whitespace = { link = "Comment" },
        -- TSConditional = { link = "Conditional" },
        -- TSParameterReference = { link = "TSParameter" },
        -- TSLabel = { link = "Type" },
        -- Conditional = { link = "Operator" },
        -- TSNamespace = { link = "TSType" },
        -- NonText = { link = "Comment" },
    }
    return theme
end

return M
