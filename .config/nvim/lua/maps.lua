vim.keymap.set('n', '<C-w>', function() vim.cmd [[ w ]] end)
vim.keymap.set({ 'n', 'x' }, '<C-S-q>', function() vim.cmd [[ q ]] end)
vim.keymap.set('n', '<C-S-w>', function() vim.cmd [[ wq ]] end)
vim.keymap.set('t', '<C-S-q>', '<C-\\><C-n>:q<Enter>')

vim.keymap.set('n', 'x', '"_x')
vim.keymap.set('n', 'c', '"_c')

-- Select all
vim.keymap.set('n', '<M-a>', 'ggVG')

-- Split Window
vim.keymap.set('n', '<M-s>', function()
  vim.cmd [[
  split
  wincmd w
]]
end)
vim.keymap.set('n', '<M-x>', function()
  vim.cmd [[
  vsplit
  wincmd w
]]
end)

-- Resize window
vim.keymap.set('n', '<C-=>', '<C-w>=')
vim.keymap.set('n', '<C-S-<>', '<C-w><')
vim.keymap.set('n', '<C-S->>', '<C-w>>')
vim.keymap.set('n', '<C-S-+>', '<C-w>+')
vim.keymap.set('n', '<C-S-->', '<C-w>-')

-- Swap Window
vim.keymap.set('n', '<C-S-h>', '<C-w>H')
vim.keymap.set('n', '<C-S-k>', '<C-w>K')
vim.keymap.set('n', '<C-S-j>', '<C-w>J')
vim.keymap.set('n', '<C-S-l>', '<C-w>L')

-- Move Window
vim.keymap.set('n', '<M-h>', '<C-w>h')
vim.keymap.set('n', '<M-k>', '<C-w>k')
vim.keymap.set('n', '<M-j>', '<C-w>j')
vim.keymap.set('n', '<M-l>', '<C-w>l')
