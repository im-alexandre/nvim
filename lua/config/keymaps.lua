local mapkey = require("util.keymapper").mapkey
-- Buffer Navigation
mapkey("<leader>bn", "bnext", "n") -- Next buffer
mapkey("<leader>bp", "bprevious", "n") -- Prev buffer
mapkey("<leader>bb", "e #", "n") -- Switch to Other Buffer
mapkey("<leader>`", "e #", "n") -- Switch to Other Buffer

-- Directory Navigatio}n
mapkey("<leader>m", "NvimTreeFocus", "n")
mapkey("<F3>", "NvimTreeToggle", "n")

-- Pane and Window Navigation
mapkey("<C-h>", "<C-w>h", "n") -- Navigate Left
mapkey("<C-j>", "<C-w>j", "n") -- Navigate Down
mapkey("<C-k>", "<C-w>k", "n") -- Navigate Up
mapkey("<C-l>", "<C-w>l", "n") -- Navigate Right
mapkey("<C-h>", "wincmd h", "t") -- Navigate Left
mapkey("<C-j>", "wincmd j", "t") -- Navigate Down
mapkey("<C-k>", "wincmd k", "t") -- Navigate Up
mapkey("<C-l>", "wincmd l", "t") -- Navigate Right
mapkey("<C-h>", "TmuxNavigateLeft", "n") -- Navigate Left
mapkey("<C-j>", "TmuxNavigateDown", "n") -- Navigate Down
mapkey("<C-k>", "TmuxNavigateUp", "n") -- Navigate Up
mapkey("<C-l>", "TmuxNavigateRight", "n") -- Navigate Right

-- Window Management
mapkey("<leader>sv", "vsplit", "n") -- Split Vertically
mapkey("<leader>sh", "split", "n") -- Split Horizontally

-- Indenting
mapkey("<", "v", "<gv") -- Shift Indentation to Left
mapkey(">", "v", ">gv") -- Shift Indentation to Right

-- Show Full File-Path
mapkey("<leader>pa", "echo expand('%:p')", "n") -- Show Full File Path

local api = vim.api

-- Zen Mode
api.nvim_set_keymap("n", "<leader>zn", ":TZNarrow<CR>", {})
api.nvim_set_keymap("v", "<leader>zn", ":'<,'>TZNarrow<CR>", {})
api.nvim_set_keymap("n", "<leader>sm", ":TZFocus<CR>", {})
api.nvim_set_keymap("n", "<leader>zm", ":TZMinimalist<CR>", {})
api.nvim_set_keymap("n", "<leader>za", ":TZAtaraxis<CR>", {})

-- Comments
api.nvim_set_keymap("n", "<C-_>", "gtc", { noremap = false })
api.nvim_set_keymap("v", "<C-_>", "goc", { noremap = false })

local function map(mode, shortcut, command)
	vim.api.nvim_set_keymap(mode, shortcut, command, { noremap = true, silent = true })
end

local function nmap(shortcut, command)
	map("n", shortcut, command)
end

local function vmap(shortcut, command)
	map("v", shortcut, command)
end

-- Git - Vim-fugitive
nmap("<leader>gj", ":diffget //3<CR>")
nmap("<leader>gf", ":diffget //2<CR>")

nmap("<leader>gs", ":G<CR>")
nmap("<leader>gc", ":Git commit<CR>")

nmap("<leader>cx", ":call CompilaLatex()<CR>")

nmap("<leader>md", ":MarkdownPreview<CR>")
nmap("<S-l>", ":tabnex<CR>")
nmap("<S-h>", ":tabprev<CR>")

-- Split resize
nmap("<A-+>", ":vertical resize +15<CR>")
nmap("<A-->", ":vertical resize -15<CR>")
nmap("<leader>v+", ":resize +15<CR>")
nmap("<leader>v-", ":resize -15<CR>")

-- MarkDown
nmap("<Leader>md", ":MarkdownPreview<CR>")
nmap("<Leader>cr", ":call Captura()<CR>")

-- colar não substitui o register
vmap("p", '"_dP')

-- Harpoon
nmap("<leader>gt", ':lua require("harpoon.term").gotoTerminal(1)<CR>')
nmap("<leader>hp", ":lua require('harpoon.ui').toggle_quick_menu()<CR>")
nmap("<leader>ha", ':lua require("harpoon.mark").add_file()<CR>')

