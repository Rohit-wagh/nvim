-- Bootstrap lazy.nvim
local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not (vim.uv or vim.loop).fs_stat(lazypath) then
	local lazyrepo = "https://github.com/folke/lazy.nvim.git"
	vim.fn.system({ "git", "clone", "--filter=blob:none", "--branch=stable", lazyrepo, lazypath })
end

vim.opt.rtp:prepend(lazypath)

require("vim-options")
-- Faster UI feedback
vim.o.updatetime = 200
vim.o.timeoutlen = 400
vim.o.ttimeoutlen = 10

-- Lazy: trim builtins you don’t need
require("lazy").setup("plugins", {
  performance = {
    rtp = {
      disabled_plugins = {
        "matchparen",
        "netrwPlugin",
        "gzip",
        "tarPlugin",
        "zipPlugin",
        "2html_plugin",
        "tohtml",
        "tutor",
        "shada_plugin",
      },
    },
  },
})
