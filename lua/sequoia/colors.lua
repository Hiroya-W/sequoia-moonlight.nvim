local M = {}

function M.setup()
    local colors = {}

    colors = {
        none = "NONE",
        bg = "#0F1014",
        bg2 = "#1f2028";

        fg = "#868690",
        fg_select = "#17181e",

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
    }

    colors.diff = {
        add = "#1d1926",
        delete = "#211924",
    }

    return colors
end

return M
