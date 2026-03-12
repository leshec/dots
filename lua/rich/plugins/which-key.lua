return {
	{
		"folke/which-key.nvim",
		event = "VimEnter",
		config = function()
			local wk = require("which-key")

			-- 1. Run the setup to configure general behavior and icons
			wk.setup({
				preset = "classic", -- Standard layout
				icons = {
					-- If you don't have mini.icons/devicons installed,
					-- setting this to false prevents the "missing icon" warnings.
					enabled = true,
				},
			})

			-- 2. Add your groups (The modern v3 way)
			wk.add({
				{ "<leader>c", group = "[C]ode" },
				{ "<leader>d", group = "[D]ocument" },
				{ "<leader>r", group = "[R]ename" },
				{ "<leader>s", group = "[S]earch" },
				{ "<leader>w", group = "[W]orkspace" },
			})
		end,
	},
}
