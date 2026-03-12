return {
	-- {{{ Define the Harpoon lazy.vim specificaiton.

	"ThePrimeagen/harpoon",
	enabled = true,
	branch = "harpoon2",
	dependencies = {
		"nvim-lua/plenary.nvim",
		"nvim-telescope/telescope.nvim",
	},

	-- ----------------------------------------------------------------------- }}}
	-- {{{ Define events to load Harpoon.

	keys = function()
		local harpoon = require("harpoon")

		return {
			-- Harpoon marked files 1 through 4
			{
				"<C-h>",
				function()
					harpoon:list():select(1)
				end,
				desc = "Harpoon buffer 1",
			},
			{
				"<C-j>",
				function()
					harpoon:list():select(2)
				end,
				desc = "Harpoon buffer 2",
			},
			{
				"<C-k>",
				function()
					harpoon:list():select(3)
				end,
				desc = "Harpoon buffer 3",
			},
			{
				"<C-l>",
				function()
					harpoon:list():select(4)
				end,
				desc = "Harpoon buffer 4",
			},

      -- Harpoon user interface.
      {"<C-e>", function() harpoon.ui:toggle_quick_menu(harpoon:list()) end, desc ="Harpoon Toggle Menu"},
      {"<leader>t", function() harpoon:list():append() end, desc ="Harpoon add file"},

    }
			end,

	-- ----------------------------------------------------------------------- }}}
	-- {{{ Use Harpoon defaults or my customizations.

	opts = function(_, opts)
		opts.settings = {
      --amended two below to true
			save_on_toggle = true,
			sync_on_ui_close = true,
			save_on_change = true,
			enter_on_sendcmd = false,
			tmux_autoclose_windows = false,
			mark_branch = false,
			key = function()
				return vim.loop.cwd()
			end,
		}
	end,

	-- ----------------------------------------------------------------------- }}}
	-- {{{ Configure Harpoon.

	config = function(_, opts)
		require("harpoon").setup(opts)
	end,

	-- ----------------------------------------------------------------------- }}}
}
