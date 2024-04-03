# AstroNvim Template

**NOTE:** This is for AstroNvim v4+

A template for getting started with [AstroNvim](https://github.com/AstroNvim/AstroNvim)

## 🛠️ Installation

#### Make a backup of your current nvim and shared folder

```shell
mv ~/.config/nvim ~/.config/nvim.bak
mv ~/.local/share/nvim ~/.local/share/nvim.bak
mv ~/.local/state/nvim ~/.local/state/nvim.bak
mv ~/.cache/nvim ~/.cache/nvim.bak
```

#### Create a new user repository from this template

Press the "Use this template" button above to create a new repository to store your user configuration.

You can also just clone this repository directly if you do not want to track your user configuration in GitHub.

#### Clone the repository

```shell
git clone https://github.com/latenitecoding/astronvim_config.git ~/.config/nvim
```

#### Start Neovim

```shell
nvim
```

## Community Plugins and Themes
- TokyoNight for theme
- Harpoon for file navigation
- Java support via nvim-jdtls
- Lean support via nvim-treesitter-textobjects, switch.vim, and lean.vim
- Rust support via rustaceanvim
- Copilot via copilot.lua (have to configure nvim-cmp to include copilot)
- Typically prefer lualine over heirline
