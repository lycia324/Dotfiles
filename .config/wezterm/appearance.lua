local wezterm = require 'wezterm'
local module = {}

function module.apply(config)
  -- 字体设置
  config.font = wezterm.font_with_fallback {
    'JetBrainsMono NF',
    'JetBrainsMono Nerd Font',
    'LXGW WenKai',
  }

  -- 主题
  config.color_scheme = 'Catppuccin Macchiato'

  -- 背景设置
  config.window_background_opacity = 0.8
  -- config.window_background_gradient = RdPu

  -- Tab Bar
  config.enable_tab_bar = true
  config.use_fancy_tab_bar = true

  -- 滚动条
  config.enable_scroll_bar = true

  --padding
  config.window_padding = {
    left = 2,
    right = 25,
    top = 2,
    bottom = 2,
  }

  if wezterm.target_triple == "x86_64-pc-windows-msvc" then
    config.window_decoration = "RESIZE | INTEGRATED_BUTTONS"
  end

end

return module
