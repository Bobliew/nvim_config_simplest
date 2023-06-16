local packer = require("packer")
packer.startup({
  function(use)
    -- Packer 可以管理自己本身
    use 'wbthomason/packer.nvim'
    use 'ellisonleao/gruvbox.nvim'
    -- nvim-tree (新增)
    use({ "kyazdani42/nvim-tree.lua", requires = "kyazdani42/nvim-web-devicons" })
    -- bufferline (新增)
    -- use {'akinsho/bufferline.nvim', tag = "v1.*", requires = 'nvim-tree/nvim-web-devicons'}
    -- 你的插件列表...
    use 'f'
  end,
  config = {
     max_jobs = 16,
    -- 自定义源
    git = {
      default_url_format = "https://github.com",
      default_url_format = "https://mirror.ghproxy.com/https://github.com/%s",
      default_url_format = "https://gitcode.net/mirrors/%s",
      -- default_url_format = "https://gitclone.com/github.com/%s",
    },
    display = {
        open_fn = function()
            return require("packer.util").float({ border = "single" })
        end,
    },
  },
})


-- 每次保存 plugins.lua 自动安装插件
pcall(
  vim.cmd,
  [[
    augroup packer_user_config
    autocmd!
    autocmd BufWritePost plugins.lua source <afile> | PackerSync
    augroup end
  ]]
)
