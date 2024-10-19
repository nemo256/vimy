return {
	"glepnir/dashboard-nvim",
	event = "VimEnter",
	dependencies = { "nvim-tree/nvim-web-devicons" },
	config = function()
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
					"   ▀▄    ▄▀ █   ▄██▄   ▄  ▄  ▀▀ █  ",
					"    █  ▄▀  █    ▀██▀    ▀▀ ▀▀  ▄▀  ",
					"   █   █  █      ▄▄           ▄▀   ",
					"                                   ",
					"                                   ",
				},
				center = {
					{
						icon = "  ",
						desc = "History                      ",
						key = "CTRL + SHIFT + H",
						action = "Telescope oldfiles",
					},
					{
						icon = "  ",
						desc = "Files                        ",
						key = "CTRL + SHIFT + F",
						action = "Telescope find_files find_command=rg,--files",
					},
					{
						icon = "  ",
						desc = "Load                         ",
						key = "CTRL + SHIFT + L",
						action = "SessionLoad",
					},
					{
						icon = "  ",
						desc = "Work                         ",
						key = "CTRL + SHIFT + W",
						action = "e ~/work",
					},
				},
				footer = { "󱓟  Neovim FTW  󱓟" },
			},
			hide = {
				statusline = true,
				tabline = true,
				winbar = true,
			},
		})
	end,
}
