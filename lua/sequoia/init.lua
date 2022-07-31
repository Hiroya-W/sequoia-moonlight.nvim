local theme = require("sequoia.theme").setup()
local sequoia_colors = require("sequoia.colors").setup()
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

local function terminal()
    vim.g.terminal_color_0 = sequoia_colors.bg
    vim.g.terminal_color_8 = sequoia_colors.bg

    vim.g.terminal_color_7 = sequoia_colors.fg
    vim.g.terminal_color_15 = sequoia_colors.fg

    -- red
    vim.g.terminal_color_1 = sequoia_colors.pink
    vim.g.terminal_color_9 = sequoia_colors.pink

    -- green
    vim.g.terminal_color_2 = sequoia_colors.blue
    vim.g.terminal_color_10 = sequoia_colors.blue

    -- yellow
    vim.g.terminal_color_3 = sequoia_colors.gray
    vim.g.terminal_color_11 = sequoia_colors.gray

    -- blue
    vim.g.terminal_color_3 = sequoia_colors.purple
    vim.g.terminal_color_11 = sequoia_colors.purple

    -- magenta
    vim.g.terminal_color_4 = sequoia_colors.white
    vim.g.terminal_color_12 = sequoia_colors.white

    -- cyan
    vim.g.terminal_color_4 = sequoia_colors.orange
    vim.g.terminal_color_12 = sequoia_colors.orange
end

function M.colorscheme()
    if vim.g.color_name then
        vim.cmd("hightlight clear")
    end

    vim.g.colors_name = "sequoia"

    for group, color in pairs(theme.base) do
        highlight(group, color)
    end

    terminal()
end

return M
