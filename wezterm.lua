local lib = require("lib")
local _, user_config = pcall(require, "user_wezconf")

-- If you are looking for how to use this, check out the example found in `.wezterm.lua` in this directory or the `README.md`!

user_config = _ == true and user_config or {}

return lib.load(user_config)
