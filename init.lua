local hotkey = require "mjolnir.hotkey"
local window = require "mjolnir.window"
local screen = require "mjolnir.screen"

local cshft = {"ctrl", "shift"}
local mover = {"cmd", "alt"}

hotkey.bind(cshft, "h", function() window.focusedwindow():focuswindow_west() end)
hotkey.bind(cshft, "l", function() window.focusedwindow():focuswindow_east() end)
hotkey.bind(cshft, "j", function() window.focusedwindow():focuswindow_south() end)
hotkey.bind(cshft, "k", function() window.focusedwindow():focuswindow_north() end)

-- maximize window in target screen

function maximizeInScreen(w, num)
    target_screen = screen.allscreens()[num]
    w:settopleft({x=target_screen:frame()["x"], y=target_screen:frame()["y"]})
    w:maximize()
end

hotkey.bind(mover, "1", function() maximizeInScreen(window.focusedwindow(), 1) end)
hotkey.bind(mover, "2", function() maximizeInScreen(window.focusedwindow(), 2) end)
hotkey.bind(mover, "3", function() maximizeInScreen(window.focusedwindow(), 3) end)
