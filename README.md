# Omarchy dotfiles

User customizations for Omarchy (Hyprland + Quickshell shell).

## What's tracked

| Path | Purpose |
|------|---------|
| `.config/omarchy/shell.json` | Shell layout + active plugins (custom `zakariyya.*` overrides stock `omarchy.*`) |
| `.config/omarchy/extensions/omarchy-menu.jsonc` | Menu overrides (Theme row → custom image-picker) |
| `.config/omarchy/plugins/zakariyya.*` | Custom plugins: menu, clipboard, emojis, image-picker |
| `.config/omarchy/hooks/` | Custom automation hooks |
| `.config/omarchy/themes/` | Custom themes |
| `.config/omarchy/branding/` | Custom About / screensaver text |
| `.config/hypr/` | Hyprland keybindings, look'n'feel, monitors, input, autostart |

## Restore on a new machine

After installing Omarchy:

```bash
# Clone this repo
cd ~
git clone <your-dotfiles-url> ~/.dotfiles

# Copy config into place
cp -r ~/.dotfiles/.config/omarchy ~/.config/omarchy
cp -r ~/.dotfiles/.config/hypr ~/.config/hypr

# Restart Omarchy shell to pick up changes
omarchy restart shell

# Verify
omancy theme current           # should show your theme
omancy menu summon appearance.theme  # should open theme picker, Ctrl+N/P work
```

## Notes

- Do **not** copy `~/.local/state/omarchy/`, `~/.cache/omarchy/`, or runtime sockets — those regenerate.
- Review `.config/hypr/monitors.lua` on the new machine; monitor names/GPU may differ.
- Stock Omarchy plugins are under `/usr/share/omarchy/` — never edit those. Custom clones live in `~/.config/omarchy/plugins/`.
