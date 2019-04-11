-- https://www.hammerspoon.org/
-- Getting Started Guide:
--    https://www.hammerspoon.org/go/
-- Learn X in Y minutes; where X = Lua:
--    https://learnxinyminutes.com/docs/lua/

-- Make the console dark
hs.console.darkMode(true)
if hs.console.darkMode() then
  hs.console.outputBackgroundColor {white = 0}
  hs.console.consoleCommandColor {white = 1}
  hs.console.consolePrintColor {white = 1}
  hs.console.alpha(1)
end

hyper = {"cmd", "alt", "ctrl"}
shift_hyper = {"cmd", "alt", "ctrl", "shift"}

Install = hs.loadSpoon("SpoonInstall")
-- Install.use_syncinstall = true

spoon.SpoonInstall.repos.zzspoons = {
  url = "https://github.com/zzamboni/zzSpoons",
  desc = "zzamboni's spoon repository"
}

-- Load Hammerspoon bits from https://github.com/jasonrudolph/ControlEscape.spoon
-- I need to figure out how to load this via SpoonInstall.
hs.loadSpoon("ControlEscape"):start()

Install:andUse(
  "TimeMachineProgress",
  {
    start = true
  }
)

Install:andUse(
  "KSheet",
  {
    hotkeys = {
      toggle = {hyper, "/"}
    }
  }
)

Install:andUse(
  "Hammer",
  {
    repo = "zzspoons",
    -- config = {auto_reload_config = false},
    hotkeys = {
      config_reload = {hyper, "r"},
      toggle_console = {hyper, "y"}
    },
    start = true
  }
)

-- Handy for debugging. From:
--    https://github.com/kikito/inspect.lua/blob/master/inspect.lua
inspect = require("inspect")

Install:andUse(
  "FadeLogo",
  {
    config = {
      default_run = 1.0
    },
    start = true
  }
)

-- EOF
