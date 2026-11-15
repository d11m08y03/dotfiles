-- Keep only your personal keybinding overrides here. Add new bindings or
-- unbind defaults before replacing them.

-- See current bindings and descriptions:
--   omarchy menu keybindings --print

-- To disable every Omarchy default binding, set this in
-- ~/.config/hypr/hyprland.lua before require("default.hypr.omarchy"), then add
-- only the bindings you want below:
--   omarchy_default_bindings = false

-- To disable all preinstalled app/webapp bindings, set:
--   omarchy_preinstalled_bindings = false

-- Add a new binding.
-- o.bind("SUPER + SHIFT + R", "SSH", "alacritty -e ssh your-server")

-- Change an existing binding by unbinding it first, then binding the key again.
-- This example changes SUPER+SPACE from the launcher to the Omarchy root menu.
-- hl.unbind("SUPER + SPACE")
-- o.bind("SUPER + SPACE", "Omarchy menu", "omarchy-menu toggle root")

-- Disable a default binding without replacing it.
-- hl.unbind("SUPER + SHIFT + B")

-- Logitech MX Keys examples:
-- o.bind("SUPER + SHIFT + S", nil, "omarchy-capture-screenshot")
-- o.bind("SUPER + H", nil, "voxtype record toggle")
-- o.bind("SUPER + PERIOD", nil, "omarchy-shell shell toggle omarchy.emojis")

hl.unbind("SUPER + W")
hl.unbind("SUPER + ALT + F")
o.bind("SUPER + W", "Full width", hl.dsp.window.fullscreen({ mode = "maximized" }))
hl.unbind("SUPER + Q")
hl.bind("SUPER + Q", hl.dsp.window.close())
hl.unbind("switch:on:Lid Switch")
hl.unbind("switch:off:Lid Switch")

-- Free the Vim direction keys; move their previous actions to SUPER + CTRL.
hl.unbind("SUPER + J")
hl.unbind("SUPER + K")
hl.unbind("SUPER + L")
hl.unbind("SUPER + CTRL + K") -- Previously Herdr keybindings.
hl.unbind("SUPER + CTRL + L") -- Previously lock system.

-- Focus left/right: cycle within a group if grouped, otherwise move directionally.
-- Try group focus first; if focus didn't change, we're not in a group, fall back to directional.
local function focus_left()
  local before = hl.get_active_window()
  local before_addr = before and before.address
  hl.dispatch(hl.dsp.group.prev())
  local after = hl.get_active_window()
  local after_addr = after and after.address
  if before_addr == after_addr then
    hl.dispatch(hl.dsp.focus({ direction = "l" }))
  end
end

local function focus_right()
  local before = hl.get_active_window()
  local before_addr = before and before.address
  hl.dispatch(hl.dsp.group.next())
  local after = hl.get_active_window()
  local after_addr = after and after.address
  if before_addr == after_addr then
    hl.dispatch(hl.dsp.focus({ direction = "r" }))
  end
end

o.bind("SUPER + H", "Focus left / prev in group", focus_left)
o.bind("SUPER + J", "Focus on below window", hl.dsp.focus({ direction = "d" }))
o.bind("SUPER + K", "Focus on above window", hl.dsp.focus({ direction = "u" }))
o.bind("SUPER + L", "Focus right / next in group", focus_right)

-- Match SUPER + SHIFT + arrow keys for directional window swaps.
o.bind("SUPER + SHIFT + H", "Swap window to the left", hl.dsp.window.swap({ direction = "l" }))
o.bind("SUPER + SHIFT + J", "Swap window down", hl.dsp.window.swap({ direction = "d" }))
o.bind("SUPER + SHIFT + K", "Swap window up", hl.dsp.window.swap({ direction = "u" }))
o.bind("SUPER + SHIFT + L", "Swap window to the right", hl.dsp.window.swap({ direction = "r" }))

o.bind("SUPER + CTRL + J", "Toggle window split", hl.dsp.layout("togglesplit"))
o.bind("SUPER + CTRL + K", "Keybindings", "omarchy-menu-keybindings")
o.bind("SUPER + CTRL + L", "Toggle workspace layout", "omarchy-hyprland-workspace-layout-toggle")
o.bind("SUPER + Z", "Lock system", "omarchy-system-lock")
