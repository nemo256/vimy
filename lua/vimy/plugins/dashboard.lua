return {
  "glepnir/dashboard-nvim",
  event = "UIEnter",
  dependencies = { "nvim-tree/nvim-web-devicons" },
  config = function()
    vim.cmd([[
      highlight DashboardIcon guifg=#FFD700 guibg=NONE
      highlight DashboardDesc guifg=#AAAAAA guibg=NONE
      highlight DashboardKey guifg=#5FD7FF guibg=NONE
    ]])

    require("dashboard").setup({
      theme = "doom",
      config = {
        header = {
          "                                   ",
          "          ▀████▀▄▄              ▄█ ",
          "            █▀    ▀▀▄▄▄▄▄    ▄▄▀▀█ ",
          "    ▄        █          ▀▀▀▀▄  ▄▀  ",
          "   ▄▀ ▀▄      ▀▄              ▀▄▀  ",
          "  ▄▀    █     █▀   ▄█▀▄      ▄█    ",
          "  ▀▄     ▀▄  █     ▀██▀     ██▄█   ",
          "   ▀▄    �▀ █   ▄██▄   ▄  ▄  ▀▀ █  ",
          "    █  ▄▀  █    ▀██▀    ▀▀ ▀▀  ▄▀  ",
          "   █   █  █      ▄▄           ▄▀   ",
          "                                   ",
          "                                   ",
        },
        center = {
          {
            icon = "  ",
            icon_hl = "DashboardIcon",
            desc = "History                      ",
            desc_hl = "DashboardDesc",
            key = "CTRL + SHIFT + H",
            key_hl = "DashboardKey",
            action = "Telescope oldfiles",
          },
          {
            icon = "  ",
            icon_hl = "DashboardIcon",
            desc = "Files                        ",
            desc_hl = "DashboardDesc",
            key = "CTRL + SHIFT + F",
            key_hl = "DashboardKey",
            action = "Telescope find_files find_command=rg,--files",
          },
          {
            icon = "  ",
            icon_hl = "DashboardIcon",
            desc = "Load                         ",
            desc_hl = "DashboardDesc",
            key = "CTRL + SHIFT + L",
            key_hl = "DashboardKey",
            action = "SessionLoad",
          },
          {
            icon = "  ",
            icon_hl = "DashboardIcon",
            desc = "Work                         ",
            desc_hl = "DashboardDesc",
            key = "CTRL + SHIFT + W",
            key_hl = "DashboardKey",
            action = "e ~/work",
          },
        },
        footer = { "  Neovim FTW  " },
      },
      hide = {
        statusline = true,
        tabline = true,
        winbar = true,
      },
    })
  end,
}

