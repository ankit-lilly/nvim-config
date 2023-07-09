local ensure_packer = function()
  local fn = vim.fn
  local install_path = fn.stdpath("data") .. "/site/pack/packer/start/packer.nvim"
  if fn.empty(fn.glob(install_path)) > 0 then
    fn.system({ "git", "clone", "--depth", "1", "https://github.com/wbthomason/packer.nvim", install_path })
    vim.cmd([[packadd packer.nvim]])
    return true
  end
  return false
end

local packer_bootstrap = ensure_packer() -- true if packer was just installed


local status, packer = pcall(require, "packer")
if not status then
  return
end

-- add list of plugins to install
return packer.startup(function(use)
  -- packer can manage itself
  use("wbthomason/packer.nvim")
  use("ellisonleao/gruvbox.nvim")
  use("nvim-tree/nvim-tree.lua")
  use("neanias/everforest-nvim")
  use("rmehri01/onenord.nvim")
  use("nvim-lua/plenary.nvim")
  use({"nvim-telescope/telescope.nvim", branch = "0.1.x"})
  use({"nvim-telescope/telescope-fzf-native.nvim", run = "make"})
  use({"neoclide/coc.nvim", branch = "release"})
  use({"nvim-treesitter/nvim-treesitter", run = ":TSUpdate"})

  if packer_bootstrap then
    require("packer").sync()
  end
end)
