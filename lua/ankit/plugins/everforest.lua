local setup, everforest = pcall(require, "everforest")
if not setup then
  return	
end

everforest.setup({
  background = "medium",
  transparent_background_level = 1
})
