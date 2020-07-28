
local config = {}
-- This is used later as the default terminal and editor to run.
config.terminal = "x-terminal-emulator"
config.editor = os.getenv("EDITOR") or "editor"
config.editor_cmd = config.terminal .. " -e " .. config.editor

return config;

