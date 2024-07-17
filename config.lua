-- vim options
vim.opt.shiftwidth = 2
vim.opt.tabstop = 2
vim.opt.relativenumber = true

-- general
lvim.log.level = "info"
lvim.format_on_save = {
	enabled = true,
	timeout = 1000,
}

vim.o.termguicolors = true
vim.opt.wrap = true
vim.o.background = "dark"
-- lvim.colorscheme = "monochrome"
lvim.colorscheme = "base16-gruvbox-dark-hard"

-- keymappings <https://www.lunarvim.org/docs/configuration/keybindings>
lvim.leader = "space"
-- add your own keymapping
lvim.keys.normal_mode["<C-s>"] = ":w<cr>"
lvim.keys.normal_mode["<tab>"] = ":bn<cr>"
lvim.keys.normal_mode["<s-tab>"] = ":bp<cr>"
vim.cmd([[
  imap <silent><script><expr> <C-j> copilot#Accept("\<CR>")
  inoremap <C-[> <esc>
  " inoremap ii <esc>
  vnoremap < <gv
  vnoremap > >gv
]])

lvim.builtin.terminal.open_mapping = "<C-t>"
lvim.builtin.which_key.mappings["S"] = {
	name = "Session",
	c = { "<cmd>lua require('persistence').load()<cr>", "Restore last session for current dir" },
	l = { "<cmd>lua require('persistence').load({ last = true })<cr>", "Restore last session" },
	Q = { "<cmd>lua require('persistence').stop()<cr>", "Quit without saving session" },
}

lvim.builtin.which_key.mappings["t"] = {
	name = "Diagnostics",
	t = { "<cmd>TroubleToggle<cr>", "trouble" },
	w = { "<cmd>TroubleToggle workspace_diagnostics<cr>", "workspace" },
	d = { "<cmd>TroubleToggle document_diagnostics<cr>", "document" },
	q = { "<cmd>TroubleToggle quickfix<cr>", "quickfix" },
	l = { "<cmd>TroubleToggle loclist<cr>", "loclist" },
	r = { "<cmd>TroubleToggle lsp_references<cr>", "references" },
}
lvim.builtin.which_key.mappings["l"]["f"] = {
	function()
		vim.lsp.format({ timeout = 5000 })
	end,
	"LSP format",
}

-- plugins

lvim.plugins = {
	-- general
	{
		"folke/trouble.nvim",
		cmd = "TroubleToggle",
	},
	{
		"andweeb/presence.nvim",
		config = function()
			require("presence"):setup({
				auto_update = true,
				neovim_image_text = "I use Arch btw",
				main_image = "file",
				enable_line_number = true,
			})
		end,
	},
	{ "tpope/vim-surround" },
	{ "barrett-ruth/live-server.nvim", build = "yarn global add live-server", config = true },

	-- navigation
	{
		"phaazon/hop.nvim",
		event = "BufRead",
		config = function()
			require("hop").setup()
			vim.api.nvim_set_keymap("n", "s", ":HopChar2<cr>", { silent = true })
			vim.api.nvim_set_keymap("n", "S", ":HopWord<cr>", { silent = true })
		end,
	},

	-- session
	{
		"folke/persistence.nvim",
		event = "BufReadPre", -- this will only start session saving when an actual file was opened
		lazy = "persistence",
		config = function()
			require("persistence").setup({
				dir = vim.fn.expand(vim.fn.stdpath("config") .. "/session/"),
				options = { "buffers", "curdir", "tabpages", "winsize" },
			})
		end,
	},
	{
		"ethanholz/nvim-lastplace",
		event = "BufRead",
		config = function()
			require("nvim-lastplace").setup({
				lastplace_ignore_buftype = { "quickfix", "nofile", "help" },
				lastplace_ignore_filetype = {
					"gitcommit",
					"gitrebase",
					"svn",
					"hgcommit",
				},
				lastplace_open_folds = true,
			})
		end,
	},

	-- git
	{ "kdheepak/lazygit.nvim" },

	-- LSP enhancement
	{
		"ray-x/lsp_signature.nvim",
		event = "BufRead",
		config = function()
			require("lsp_signature").on_attach()
		end,
	},
	{
		"mfussenegger/nvim-jdtls",
	},
	{ "olexsmir/gopher.nvim" },
	{ "leoluz/nvim-dap-go" },

	-- colorscheme
	-- { 'morhetz/gruvbox' },
	-- { 'franbach/miramare' },
	-- { 'arcticicestudio/nord-vim' },
	-- { 'shatur/neovim-ayu' },
	-- { 'folke/tokyonight.nvim' },
	-- { 'tinted-theming/base16-vim' },
	{ "RRethy/nvim-base16" },
	{ "ellisonleao/gruvbox.nvim" },

	-- debugger
	{ "mxsdev/nvim-dap-vscode-js" },
	{
		"microsoft/vscode-js-debug",
		lazy = true,
		build = "npm install --legacy-peer-deps && npx gulp vsDebugServerBundle && mv dist out",
	},
}

local cmd = vim.cmd
local g = vim.g

local current_theme_name = os.getenv("BASE16_THEME")
if current_theme_name and g.colors_name ~= "base16-" .. current_theme_name then
	cmd("let base16colorspace=256")
	cmd("colorscheme base16-" .. current_theme_name)
end

table.insert(lvim.plugins, {
	"zbirenbaum/copilot-cmp",
	event = "InsertEnter",
	dependencies = { "zbirenbaum/copilot.lua" },
	config = function()
		vim.defer_fn(function()
			require("copilot").setup() -- https://github.com/zbirenbaum/copilot.lua/blob/master/README.md#setup-and-configuration
			require("copilot_cmp").setup() -- https://github.com/zbirenbaum/copilot-cmp/blob/master/README.md#configuration
		end, 100)
	end,
})

-- go dap

local dap_ok, dapgo = pcall(require, "dap-go")
if not dap_ok then
	return
end

dapgo.setup()

-- formatters/linters
require("lvim.lsp.manager").setup("intelephense")

local formatters = require("lvim.lsp.null-ls.formatters")
formatters.setup({
	{ command = "stylua", filetype = { "lua" } },
	{
		command = "prettier",
		filetype = { "javascript", "javascriptreact", "typescript", "typescriptreact" },
		extra_args = { "--print-width", "100" },
	},
	{ command = "blade-formatter", filetype = { "php", "blade", "blade.php" } },
	{ command = "goimports", filetypes = { "go" } },
	{ command = "gofumpt", filetypes = { "go" } },
})

local linters = require("lvim.lsp.null-ls.linters")
linters.setup = {
	{ command = "eslint_d", filetypes = { "javascript", "javascriptreact", "typescript", "typescriptreact" } },
}

reload("user.debugger")

-- LSP
------------------------
vim.list_extend(lvim.lsp.automatic_configuration.skipped_servers, { "gopls" })
vim.list_extend(lvim.lsp.automatic_configuration.skipped_servers, { "htmx-lsp" })

local lsp_manager = require("lvim.lsp.manager")
lsp_manager.setup("golangci_lint_ls", {
	on_init = require("lvim.lsp").common_on_init,
	capabilities = require("lvim.lsp").common_capabilities(),
})

lsp_manager.setup("gopls", {
	on_attach = function(client, bufnr)
		require("lvim.lsp").common_on_attach(client, bufnr)
		local _, _ = pcall(vim.lsp.codelens.refresh)
		local map = function(mode, lhs, rhs, desc)
			if desc then
				desc = desc
			end

			vim.keymap.set(mode, lhs, rhs, { silent = true, desc = desc, buffer = bufnr, noremap = true })
		end
		map("n", "<leader>Ci", "<cmd>GoInstallDeps<Cr>", "Install Go Dependencies")
		map("n", "<leader>Ct", "<cmd>GoMod tidy<cr>", "Tidy")
		map("n", "<leader>Ca", "<cmd>GoTestAdd<Cr>", "Add Test")
		map("n", "<leader>CA", "<cmd>GoTestsAll<Cr>", "Add All Tests")
		map("n", "<leader>Ce", "<cmd>GoTestsExp<Cr>", "Add Exported Tests")
		map("n", "<leader>Cg", "<cmd>GoGenerate<Cr>", "Go Generate")
		map("n", "<leader>Cf", "<cmd>GoGenerate %<Cr>", "Go Generate File")
		map("n", "<leader>Cc", "<cmd>GoCmt<Cr>", "Generate Comment")
		map("n", "<leader>DT", "<cmd>lua require('dap-go').debug_test()<cr>", "Debug Test")
	end,
	on_init = require("lvim.lsp").common_on_init,
	capabilities = require("lvim.lsp").common_capabilities(),
	settings = {
		gopls = {
			usePlaceholders = true,
			gofumpt = true,
			codelenses = {
				generate = false,
				gc_details = true,
				test = true,
				tidy = true,
			},
		},
	},
})

local status_ok, gopher = pcall(require, "gopher")
if not status_ok then
	return
end

gopher.setup({
	commands = {
		go = "go",
		gomodifytags = "gomodifytags",
		gotests = "gotests",
		impl = "impl",
		iferr = "iferr",
	},
})
