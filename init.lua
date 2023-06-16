-- 基础设置
require('basic')

-- 键盘映射
require('keybindings')


-- Plugins
require('plugins')

-- colorscheme
require('colorscheme')

-- 插件配置
require("plugin-config.nvim-tree")

require("plugin-config.bufferline")

vim.cmd('source ~/.config/nvim/lua/plugin-config/bbye.vim')
