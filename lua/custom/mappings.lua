-- Set keymap for simple use
local keymap = vim.keymap
-- NOTE: This won't work in all terminal emulators/tmux/etc. Try your own mapping
-- or just use <C-\><C-n> to exit terminal mode
keymap.set('t', '<Esc><Esc>', '<C-\\><C-n>', { desc = 'Exit terminal mode' })
keymap.set('n', '<Leader>h', '<cmd>ToggleTerm size=20 direction=float border=double name=current<Cr>', { desc = 'Open a horizontal terminal ' })

-- Mapping for leetcode
keymap.set('n', '<leader>ltc', '<cmd>Leet console<Cr>', { desc = 'Show the leet code dashbord console' })
keymap.set('n', '<leader>ltd', '<cmd>Leet desc<Cr>', { desc = 'Toggle the description of the problem' })
keymap.set('n', '<leader>ltt', '<cmd>Leet test<Cr>', { desc = 'Test the current work' })
keymap.set('n', '<leader>lts', '<cmd>Leet submit<Cr>', { desc = 'Submit the current code to the server' })
keymap.set('n', '<leader>lto', '<cmd>Leet open<Cr>', { desc = 'Open the current code in a page web' })
keymap.set('n', '<leader>ltl', '<cmd>Leet list<Cr>', { desc = 'Present a list of the problems' })

-- Mapping for True zen
keymap.set('n', '<leader>zn', '<cmd>TZNarrow<CR>', { desc = 'Narrow view for True zen' })
keymap.set('n', '<leader>zf', '<cmd>TZFocus<CR>', { desc = 'Focus view for Truezen' })
keymap.set('n', '<leader>zm', '<cmd>TZMinimalist<CR>', { desc = 'minimalist view for TrueZen' })
keymap.set('n', '<leader>za', '<cmd>TZAtaraxis<CR>', { desc = 'Axis view for the TrueZen' })

-- Mapping toggle terminal
vim.keymap.set('t', '<esc>', '<C-><C-n>', { buffer = 0, desc = 'Escape terminal mode' })

-- Mapping for lazygit using toggle Terminal
--local Terminal = require('toggleterm.terminal').Terminal
--local lazygit = Terminal:new { cmd = 'lazygit', direction = 'float', size = 30, hidden = true }

--function _lazygit_toggle()
--lazygit:toggle()
--end

--vim.api.nvim_set_keymap('n', '<leader>g', '<cmd>lua _lazygit_toggle()<CR>', { noremap = true, silent = true })
