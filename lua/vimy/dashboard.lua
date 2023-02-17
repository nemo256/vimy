require('dashboard').setup{
  theme = 'doom',
  config = {
    header = {
    '                                   ',
    '          ▀████▀▄▄              ▄█ ',
    '            █▀    ▀▀▄▄▄▄▄    ▄▄▀▀█ ',
    '    ▄        █          ▀▀▀▀▄  ▄▀  ',
    '   ▄▀ ▀▄      ▀▄              ▀▄▀  ',
    '  ▄▀    █     █▀   ▄█▀▄      ▄█    ',
    '  ▀▄     ▀▄  █     ▀██▀     ██▄█   ',
    '   ▀▄    ▄▀ █   ▄██▄   ▄  ▄  ▀▀ █  ',
    '    █  ▄▀  █    ▀██▀    ▀▀ ▀▀  ▄▀  ',
    '   █   █  █      ▄▄           ▄▀   ',
    '                                   ',
    '                                   ',
    },
    center = {
      {
        icon = '  ',
        desc = 'Recently opened files                   ',
        key = 'CTRL + H',
        action =  'Telescope oldfiles',
      },
      {
        icon = '  ',
        desc = 'Find File                               ',
        key = 'CTRL + F',
        action = 'Telescope find_files find_command=rg,--files',
      },
      {
        icon = '  ',
        desc = 'Load Session                            ',
        key = 'CTRL + L',
        action =  'SessionLoad',
      },
      {
        icon = '  ',
        desc = 'Open Projects                           ',
        key = 'CTRL + W',
        action = 'e ~/Work',
      },
    },
    footer = {'󱓟  Neovim FTW  󱓟'}
  },
  hide = {
    statusline = true,
    tabline = true,
    winbar = true,
  },
}
