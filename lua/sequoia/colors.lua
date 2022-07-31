local M = {}

function M.setup()
    local colors = {}

    colors = {
        none = "NONE",
        bg = "#0F1014",

        fg = "#868690",

        base = "#0F1014",
        interface = "#111216",
        text = "#868690",
        slight = "#575861",
        soft = "#43444D",

        focus_high = "#1F1F24",

        blue = "#8eb6f5",
        purple = "#c58fff",
        pink = "#f58ee0",
        orange = "#ffbb88",
        gray = "#9898a6",
        white = "#fdfdfe",
    }
    colors.bg_cursor_line = "#18191e"
    colors.non_text_fg = colors.soft
    colors.special_key_fg = colors.soft

    colors.editorBracketHighlight = {
        fg1 = colors.pink,
        fg2 = colors.blue,
        fg3 = colors.gray,
        fg4 = colors.purple,
        fg5 = colors.orange,
        fg6 = colors.white,
        fg7 = colors.pink,
    }

    colors.editorCursor = {
        fg = colors.purple,
        bg = colors.fg
    }
    colors.editorLineNumber = {
        active_fg = colors.fg,
        fg = colors.slight
    }
    colors.statusBar = {
        fg = colors.fg,
        bg = colors.bg
    }
    colors.editorSuggestWidget = {
        fg = colors.slight,
        bg = colors.interface,
        selected_fg = colors.fg,
        selected_bg = colors.focus_high
    }
    colors.editorWhitespace = {
        fg = colors.soft
    }
    colors.editor = {
        findMatch_bg = "#373643",
        findMatchHighlight_bg = "#373643",
        fold_bg = colors.interface,
    }
    colors.error_fg = colors.pink
    colors.diffEditor = {
        diff_fg = colors.orange,
        -- incertedText_bg = "#282235", -- #0f1014 + #c58fff 0.86
        -- removedText_bg = "#2f2231", -- #0f1014 + #f58ee0 0.86
        -- changed_bg = "#312824", -- #0f1014 + #ffbb88 0.86
        incertedText_bg = colors.blue,
        removedText_bg = colors.pink,
        changed_bg = colors.orange,
    }
    colors.tokenColors = {
        comment_fg = colors.soft,
        constant = {
            fg = colors.white,
            numeric_fg = colors.orange,
            boolean_fg = colors.orange,
            character_fg = colors.blue,
        },
        keyword_fg = colors.blue,
        string_fg = colors.gray,
        entity = {
            name_fg = colors.orange,
        },
        variables = {
            fg = colors.orange,
            other_fg = colors.text,
        },
        storage = {
            type_fg = colors.blue,
            modifier_fg = colors.blue,
        },
    }

    return colors
end

return M
