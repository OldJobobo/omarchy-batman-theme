# Omarchy Batman Theme

I was inspired to build this after discovering the Batman color scheme in Ghostty. It felt so unusual that I had to see what the full desktop would look like. The goal is a bold, moody look that keeps the palette disciplined and the visuals clean for long sessions.

The palette remains grounded in the original Ghostty/iTerm2 graphite-and-yellow Batman theme. `batman-base24.yaml` preserves the canonical Tinted Theming Base24 conversion, while `colors.toml` adapts its semantic ramp for Omarchy and retains the original terminal ANSI, cursor, and selection colors exactly.

<img src="preview.png" alt="Omarchy Batman Theme preview" width="960">
<img src="preview2.png" alt="Omarchy Batman Theme preview 2" width="960">

## What's included
- Omarchy Quattro: semantic Base24 palette (`colors.toml`), native shell surfaces (`shell.toml`), and Lua Hyprland treatment (`hyprland.lua`)
- Canonical palette reference (`batman-base24.yaml`), sourced from Tinted Theming's Base24 Batman scheme by FredHappyface
- Hyprland 3.8 compatibility: custom border colors, 3px borders, and opacity rules (`hyprland.conf`)
- Hyprlock compatibility palette variables (`hyprlock.conf`)
- Legacy Waybar colors (`waybar.css`), based on https://github.com/HANCORE-linux/waybar-themes?tab=readme-ov-file by HANCORE-Linux
- Terminals: Alacritty (`alacritty.toml`), Foot (`foot.ini`), Ghostty (`ghostty.conf`), Kitty (`kitty.conf`), Warp (`warp.yaml`)
- Shell/UI tools: btop (`btop.theme`), Cava (`cava_theme`), fzf (`fzf.fish`), fish colors (`colors.fish`)
- Notifications and helpers: Mako (`mako.ini`), SwayOSD (`swayosd.css`), Walker launcher (`walker.css`), Wofi (`wofi.css`)
- Neovim Aether colorscheme + LazyVim config (`neovim.lua`), VS Code (`vscode.json`)
- GTK + Aether overrides (`gtk.css`, `aether.override.css`)
- Browser + apps: Chromium (`chromium.theme`), Steam (`steam.css`), Vencord (`vencord.theme.css`)
- Icon theme pointer (`icons.theme`)

## Quick start
Run the installer and it will place everything where it belongs:

```bash
omarchy theme install https://github.com/OldJobobo/omarchy-batman-theme
omarchy theme set batman
```

## Legacy Waybar install

Omarchy Quattro uses the native shell treatment in `shell.toml`. For older Waybar-based Omarchy installations, back up your existing Waybar config and copy the compatibility theme files:

```bash
mkdir -p ~/.config/waybar.backup
cp -a ~/.config/waybar/* ~/.config/waybar.backup/
cp -a waybar-theme/* ~/.config/waybar/
omarchy-restart-waybar
```

Wallpapers live in `backgrounds/`; `preview.png` and `preview2.png` show the intended look.

## Background previews

<table>
  <tr>
    <td><img src="backgrounds/0-dark-knight-smoke.jpg" width="280" alt="Dark Knight smoke"></td>
    <td><img src="backgrounds/1-batwing-rise.jpg" width="280" alt="Batwing rise"></td>
    <td><img src="backgrounds/2-caped-noir.jpg" width="280" alt="Caped noir"></td>
  </tr>
  <tr>
    <td><img src="backgrounds/3-gotham-vigil.jpg" width="280" alt="Gotham vigil"></td>
    <td><img src="backgrounds/4-eclipse-knight.jpg" width="280" alt="Eclipse knight"></td>
    <td><img src="backgrounds/5-moonlit-swarm.jpg" width="280" alt="Moonlit swarm"></td>
  </tr>
  <tr>
    <td><img src="backgrounds/6-gargoyle-vigil.jpg" width="280" alt="Gargoyle vigil"></td>
    <td><img src="backgrounds/7-cave-sentinel.jpg" width="280" alt="Cave sentinel"></td>
    <td><img src="backgrounds/8-split-batsigil.jpg" width="280" alt="Split bat sigil"></td>
  </tr>
  <tr>
    <td><img src="backgrounds/9-rainy-knight.jpg" width="280" alt="Rainy knight"></td>
    <td><img src="backgrounds/10-moon-silhouette.jpg" width="280" alt="Moon silhouette"></td>
    <td><img src="backgrounds/11-gotham-crest.jpg" width="280" alt="Gotham crest"></td>
  </tr>
  <tr>
    <td><img src="backgrounds/12-catwoman-duet.jpg" width="280" alt="Batman and Catwoman duet"></td>
    <td><img src="backgrounds/13-yellow-knight.jpg" width="280" alt="Yellow knight"></td>
    <td></td>
  </tr>
</table>

## Notes
- Waybar styling is derived from HANCORE-Linux's Waybar themes collection and adjusted to match the Batman palette.
