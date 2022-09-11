local c = require("sequoia.colors").setup()

local sequoia = {}

sequoia.normal = {
    a = { fg = c.bg, bg = c.blue, gui = "bold" },
    b = { fg = c.fg, bg = c.focus_high },
    c = { fg = c.fg, bg = c.bg }
}

sequoia.insert = {
    a = { fg = c.bg, bg = c.white, gui = "bold" },
    b = { fg = c.fg, bg = c.focus_high },
    c = { fg = c.fg, bg = c.bg }
}

sequoia.command = {
    a = { fg = c.bg, bg = c.orange, gui = "bold" },
    b = { fg = c.fg, bg = c.focus_high },
    c = { fg = c.fg, bg = c.bg }
}

sequoia.visual = {
    a = { fg = c.bg, bg = c.pink, gui = "bold" },
    b = { fg = c.fg, bg = c.focus_high },
    c = { fg = c.fg, bg = c.bg }
}

sequoia.replace = {
    a = { fg = c.bg, bg = c.pink, gui = "bold" },
    b = { fg = c.fg, bg = c.focus_high },
    c = { fg = c.fg, bg = c.bg }
}

sequoia.inactive = {
    a = { fg = c.white, bg = c.focus_high, gui = "bold" },
    b = { fg = c.fg, bg = c.focus_high },
    c = { fg = c.fg, bg = c.bg }
}

return sequoia
