return {
	"luukvbaal/nnn.nvim",
	config = function()
		local nnn = require("nnn")
		local cfg = {
			replace_netrw = "explorer",
			mappings = {
				{ "<C-s>", nnn.builtin.open_in_split },
				{ "<C-v>", nnn.builtin.open_in_vsplit },
				{ "<C-w>", nnn.builtin.cd_to_path },
				{ "<C-e>", nnn.builtin.populate_cmdline }
			}
		}
		nnn.setup(cfg)
	end
}
