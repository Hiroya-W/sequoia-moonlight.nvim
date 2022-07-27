local theme = require("sequoia.theme").setup()
local M = {}

local function highlight(group, color)
    local style = color.style and "gui=" .. color.style or "gui=NONE"
    local fg = color.fg and "guifg=" .. color.fg or "guifg=NONE"
    local bg = color.bg and "guibg=" .. color.bg or "guibg=NONE"
    local sp = color.sp and "guisp=" .. color.sp or ""

    local hl = "highlight " .. group .. " " .. style .. " " .. fg .. " " .. bg .. " " .. sp

    if color.link then
        vim.cmd("highlight! link " .. group .. " " .. color.link)
    else
        vim.cmd(hl)
    end
end

function M.colorscheme()
    if vim.g.color_name then
        vim.cmd("hightlight clear")
    end

    vim.g.colors_name = "sequoia"

    for group, color in pairs(theme.base) do
        highlight(group, color)
    end
end

return M
