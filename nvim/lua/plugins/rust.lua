return {
	-- Enable the rust extra
	{ import = "lazyvim.plugins.extras.lang.rust" },

	-- Optional: Enhanced rust tools
	{
		"simrat39/rust-tools.nvim",
		ft = "rust",
		opts = {
			tools = {
				hover_actions = {
					auto_focus = true,
				},
			},
			server = {
				on_attach = function(_, bufnr)
					-- Hover actions
					vim.keymap.set("n", "<C-space>", "<cmd>RustHoverActions<cr>", { buffer = bufnr })
					-- Code action groups
					vim.keymap.set("n", "<leader>cR", "<cmd>RustCodeAction<cr>", { buffer = bufnr })
				end,
				settings = {
					["rust-analyzer"] = {
						checkOnSave = {
							command = "cargo clippy",
						},
					},
				},
			},
		},
	},

	-- Optional: Better cargo.toml support
	{
		"saecki/crates.nvim",
		ft = { "rust", "toml" },
		config = function()
			require("crates").setup()
		end,
	},
}
