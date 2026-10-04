-- Options are automatically loaded before lazy.nvim startup
-- Default options that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/options.lua
-- Add any additional options here

vim.g.autoformat = false
vim.g.neovide_cursor_vfx_mode = "pixiedust"
-- vim.g.neovide_cursor_vfx_mode = "torpedo"
vim.g.neovide_cursor_vfx_particle_density = 100.0
vim.g.neovide_floating_shadow = false
vim.g.neovide_input_ime = true
vim.g.neovide_hide_mouse_when_typing = true
vim.g.ndx_cursor_animation = true
vim.g.ndx_cursor_vfx_mode = "pixiedust"
vim.g.ndx_cursor_vfx_particle_density = 200.0
vim.g.ndx_cursor_trail_in_insert_mode = false -- insert 模式下无拖尾和粒子，只平滑移动
vim.g.ndx_cursor_short_animation_length = 0.08 -- 打字时光标滑动时长（默认 0.04）
vim.g.ndx_scroll_animation = true
vim.g.ndx_neon_text = true
-- vim.g.ndx_neon_radius = 7.0    -- 光晕范围（默认 7，可试 5–10；太小发糊，太大成团）
-- vim.g.ndx_neon_intensity = 0.2 -- 光晕强度（默认 0.2，可试 0.15–0.35）

local opt = vim.opt

opt.spell = false
opt.conceallevel = 0
opt.wrap = true
opt.relativenumber = false
opt.guifont = {"CaskaydiaCove Nerd Font", "Source Han Sans SC", ":h12" }
-- opt.guifont = {"CaskaydiaCove Nerd Font", "Source Han Sans CN", "微软雅黑", "Maple Mono SC NF", ":h12" }
opt.guicursor =
  "n-v-c:block,i-ci-ve:ver25,r-cr:hor20,o:hor50,a:blinkwait0-blinkoff0-blinkon0-Cursor/lCursor,sm:block-blinkwait0-blinkoff0-blinkon0"
opt.list = true
opt.listchars = { space = "·" }
opt.shell = "pwsh"
opt.shellcmdflag = "-command"
opt.shellquote = '"'
opt.shellxquote = ""
opt.modelines = 0
opt.showcmd = false
opt.scrolloff = 0
opt.cinkeys = "0{,0},0),0],0#,!^F,o,O,e"
opt.indentkeys = "0{,0},0),0],0#,!^F,o,O,e"
