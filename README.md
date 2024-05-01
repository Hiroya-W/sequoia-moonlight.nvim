# sequoia-moonlight.nvim

Sequoia Moonlight for Neovim theme.

![demo](https://user-images.githubusercontent.com/43127622/182034704-89f72177-98df-4737-979b-143b53e345c5.png)

## Sequoia-Theme

Sequoia theme created by [Michael Andreuzza](https://github.com/michael-andreuzza).

- [Official Website](https://www.michaelandreuzza.com/vscode/sequoia/)
- [Sequoia for VS Code](https://github.com/Sequoia-Theme/vs-code)

This Neovim theme is based on the color scheme of Sequoia for VS Code.

This plugin for Neovim created and maintained by [Hiroya-W](https://github.com/Hiroya-W).

## Available

- [x] Sequoia Moonlight is supported.
- [ ] Sequoia Monochrome **is not supported**.


## Supported plugins

- [committia.vim](https://github.com/rhysd/committia.vim)
- [gitsigns.nvim](https://github.com/lewis6991/gitsigns.nvim)
- [nvim-tree.lua](https://github.com/kyazdani42/nvim-tree.lua)
- [nvim-treesitter](https://github.com/nvim-treesitter/nvim-treesitter)
- [nvim-ts-rainbow](https://github.com/p00f/nvim-ts-rainbow)
- [lualine.nvim](https://github.com/nvim-lualine/lualine.nvim)

## Requirements

- Neovim >= 0.5.0

## Installation

[packer.nvim](https://github.com/wbthomason/packer.nvim):

```bash
use 'Hiroya-W/sequoia-moonlight.nvim'
```

## Usage

Enable the colorscheme.

```vim
" for Vim Script
colorscheme sequoia
```

```lua
-- Lua
vim.cmd[[colorscheme sequoia]]
```

To enable theme for `lualine.nvim`.

```lua
require('lualine').setup {
  options = {
    theme = 'sequoia'
  }
}
```

## License

[MIT License](./LICENSE)

## Author

[Hiroya-W](https://github.com/Hiroya-W)
