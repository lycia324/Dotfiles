local wezterm = require 'wezterm'
local shell = require 'shell'
local appearance = require 'appearance'
local config = {}

if wezterm.config_builder then
  config = wezterm.config_builder()
end

shell.apply(config)
appearance.apply(config)


return config
