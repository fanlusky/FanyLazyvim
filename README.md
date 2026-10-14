# 💤 FanyLazyVim

Based on the starter template for [LazyVim](https://github.com/LazyVim/LazyVim).
Refer to the [documentation](https://lazyvim.github.io/installation) to learn more about it.

Some Prerequisites:

- gzip: `scoop install gzip`
- gcc: `scoop install mingw`
- Nerd Font: 
    ```powershell
    scoop bucket add nerd-fonts
    scoop install nerd-fonts/CascadiaCode-NF
    ```
- nodejs & npm
    ```powershell
    scoop install nodejs
    ```
- rg & fd
    ```powershell
    scoop install ripgrep fd
    ```
- tree-sitter-cli
    ```powershell
    npm install -g tree-sitter-cli
    ```

Effects are as follows,

![](https://i.imgur.com/fS2lFic.png)

![](https://i.imgur.com/NFiBfv5.png)

![](https://i.imgur.com/3hx9KJD.png)

![](https://i.imgur.com/ebT9DaG.png)

## Ndx

This config also targets [Ndx](https://github.com/fanlusky/Ndx), a Neovim GUI for Windows. Its settings only take effect inside Ndx, which sets `g:ndx`:

- `lua/config/options.lua`: the `g:ndx_*` options. The animated cursor with pixie dust particles and no trail while typing, smooth scrolling, and a Mica window: `g:ndx_backdrop = "mica"` with `g:ndx_background_opacity = 0.0`, so the backdrop shows through the whole editor. Use `"acrylic"` for frosted glass, or raise the opacity to darken the background.
- `lua/plugins/catppuccin.lua`: `transparent_background = true`, also in Ndx. Neovim reports the cleared background to Ndx as black, which Ndx draws with `g:ndx_background_opacity`.
- `lua/fany/fanykeymaps.lua`: `F11` toggles fullscreen, `Alt+Enter` toggles the borderless window.

Mica and Acrylic need Windows 11 22H2 or later. See the [Ndx README](https://github.com/fanlusky/Ndx#transparency-mica-and-acrylic) for all options.

More notes about this config repo, see my [blog](https://fanlumaster.github.io/2023/11/25/Lazyvim-configure-from-scratch/).


