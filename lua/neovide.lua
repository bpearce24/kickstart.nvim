-- Some neovide settings
G = { isNeovide = false }
if vim.g.neovide then
  vim.g.neovide_position_animation_length = 0
  vim.g.neovide_scroll_animation_length = 0
  vim.g.neovide_hide_mouse_when_typing = true
  vim.g.neovide_cursor_animation_length = 0
  G.isNeovide = true
end
