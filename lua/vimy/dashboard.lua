local home = os.getenv('HOME')
local db = require('dashboard')

-- Dashboard config
db.custom_header = {
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
}
db.custom_center = {
  {icon = '  ',
  desc = 'Recently opened files                   ',
  action =  'Telescope oldfiles',
  shortcut = '<CTRL + H>'},
  {icon = '  ',
  desc = 'Find File                               ',
  action = 'Telescope find_files find_command=rg,--files',
  shortcut = '<CTRL + F>'},
  {icon = '  ',
  desc = 'Load Session                            ',
  action =  'SessionLoad',
  shortcut = '<CTRL + L>'},
  {icon = '  ',
  desc = 'Open Projects                           ',
  action = 'e ~/Work',
  shortcut = '<CTRL + W>'},
}
db.custom_footer = {}

db.hide_statusline = true
db.hide_tabline = true
db.hide_winbar = true
db.session_directory = '~/.config/nvim/session'
db.session_auto_save_on_exit = true
db.session_verbose = true
