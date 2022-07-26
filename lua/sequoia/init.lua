local M = {}

function M.colorscheme()
    if vim.g.color_name then
        vim.cmd("hightlight clear")
    end

    vim.g.colors_name = "sequoia-moonlight"
end

return M
