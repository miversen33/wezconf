local lib = require("lib")
local _, user_conf_generator = pcall(require, "user_wezconf")

local user_conf = {}
if _ == true and user_conf_generator then
    if not user_conf_generator.generate then
        require("wezterm").log_warn("miversen wezconf: Support for user configurations being returned has been deprecated. Please wrap your user configuration return in a function called `generate`!")
        user_conf = user_conf_generator
    else
        user_conf = user_conf_generator.generate and user_conf_generator.generate() or user_conf
    end
end

-- If you are looking for how to use this, check out the example found in `.wezterm.lua` in this directory or the `README.md`!

return lib.load(user_conf)
