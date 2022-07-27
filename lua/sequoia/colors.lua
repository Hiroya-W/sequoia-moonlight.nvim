local M = {}

function M.setup()
    local colors = {}

    colors = {
        none = "NONE",
        bg = "#0F1014",
        bg_cursor_line = "#18191e",

        fg = "#868690",

        base = "#0F1014",
        text = "#868690",
        slight = "#575861",
        soft = "#43444D",

        blue = "#8eb6f5",
        purple = "#c58fff",
        pink = "#f58ee0",
        orange = "#ffbb88",
        gray = "#9898a6",
        white = "#fdfdfe",

        editorCursor = {
            fg = colors.purple,
            bg = colors.fg
        },
        editorLineNumber = {
            active_fg = colors.fg,
            fg = colors.slight
        },
    }

    return colors
end

return M
