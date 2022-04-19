vim.api.nvim_set_keymap('n', '<space>tw',  "<cmd>lua require('template.template').generate_template('qt_widget')<cr>", {noremap = true, silent = true })
vim.api.nvim_set_keymap('n', '<space>tc',  "<cmd>lua require('template.template').generate_template('qt_console')<cr>", {noremap = true, silent = true })
vim.api.nvim_set_keymap('n', '<space>tb',  "<cmd>lua require('template.template').generate_template('benchmark')<cr>", {noremap = true, silent = true })
vim.api.nvim_set_keymap('n', '<space>tf',  "<cmd>lua require('template.template').generate_template('fpga')<cr>", {noremap = true, silent = true })
