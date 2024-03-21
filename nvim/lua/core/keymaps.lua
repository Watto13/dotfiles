-- Navigate vim panes better
vim.keymap.set('n', '<c-k>', ':wincmd k<CR>')
vim.keymap.set('n', '<c-j>', ':wincmd j<CR>')
vim.keymap.set('n', '<c-h>', ':wincmd h<CR>')
vim.keymap.set('n', '<c-l>', ':wincmd l<CR>')

-- Remove Search
vim.keymap.set('n', '<leader>h', ':nohlsearch<CR>')

-- Previous Buffer
vim.keymap.set('n', '<leader>b', ':b#<CR>')

-- Enter Normal Mode: 
-- Enter normal mode in terminal with <C-t>
vim.keymap.set('t', '<C-t>', '<C-\\><C-n>')
-- Enter normal mode in visual mode with <C-c>
vim.keymap.set('v', '<C-c>', '<Esc>')
-- Enter normal mode in insert mode with <C-c>
vim.keymap.set('i', '<C-c>', '<Esc>')

-- Move lines: 
--
-- Move line up 
vim.keymap.set('n', '<A-j>', ':m .+1<CR>==')
-- Move line down 
vim.keymap.set('n', '<A-k>', ':m .-2<CR>==')
-- Move line up in visual mode 
vim.keymap.set('v', '<A-j>', ':m \'>+1<CR>gv=gv')
-- Move line down in visual mode 
vim.keymap.set('v', '<A-k>', ':m \'<-2<CR>gv=gv')

-- Resize panes:
-- Resize pane up 
vim.keymap.set('n', '<C-Up>', ':resize +2<CR>')
-- Resize pane down 
vim.keymap.set('n', '<C-Down>', ':resize -2<CR>')
-- Resize pane left 
vim.keymap.set('n', '<C-Left>', ':vertical resize +2<CR>')
-- Resize pane right 
vim.keymap.set('n', '<C-Right>', ':vertical resize -2<CR>')
