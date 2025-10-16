local wezterm = require("wezterm")
local module = {}

function module.apply(config)
    -- 根据操作系统自动选择 shell
    if wezterm.target_triple == "x86_64-pc-windows-msvc" then
    config.default_prog = { "pwsh.exe", "-NoLogo" }
    elseif wezterm.target_triple:find("linux") then
    config.default_prog = { "/usr/bin/fish", "-l" }
    elseif wezterm.target_triple:find("apple") then
    config.default_prog = { "/bin/zsh", "-l" }
    end
end

return module
