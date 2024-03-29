<div align="center">

# `Vimy`

<h3>
  My personal neovim setup.
</h3>

<!-- Badges -->
![GitHub Repo stars](https://img.shields.io/github/stars/nemo256/vimy?style=for-the-badge)
![Maintenance](https://shields.io/maintenance/yes/2023?style=for-the-badge)
![License](https://shields.io/github/license/nemo256/vimy?style=for-the-badge)

<!-- Demo image -->
![Demo](demo.png)

</div>

<!-- TABLE OF CONTENTS -->
## Table of Contents

* [Project Structure 📁](#project-structure)
* [Setup 🔨](#setup)
* [License 📑](#license)

## Project Structure 📁
```
vimy/
  ├── lua/
  │   └── vimy/
  │       ├── autocompletion.lua
  │       ├── colorscheme.lua
  │       ├── dashboard.lua
  │       ├── init.lua
  │       ├── lualine.lua
  │       ├── packer.lua
  │       ├── remap.lua
  │       ├── set.lua
  │       ├── telescope.lua
  │       ├── treesitter.lua
  │       └── undotree.lua
  │
  ├── AUTHORS
  ├── demo.png
  ├── init.lua
  ├── LICENSE
  └── README.md
```

## Setup 🔨
> Setup vimy:
```shell
git clone https://github.com/nemo256/vimy \
  ~/.config/nvim
```

> Setup packer: 
```shell
git clone --depth 1 https://github.com/wbthomason/packer.nvim\
  ~/.local/share/nvim/site/pack/packer/start/packer.nvim
```

> Install all the plugins:
```shell
nvim --headless -c 'autocmd User PackerComplete quitall' -c 'PackerSync'
```

## License 📑
- Please read [vimy/LICENSE](https://github.com/nemo256/vimy/blob/master/LICENSE)
