Got you — you want a **tight, practical cheatsheet**, no generic Vim lesson fluff.

Here is a much **shorter**, **useful**, and **to-the-point** README meant for *your* setup:

---

# `README.md`

```md
# Neovim Config Cheatsheet (Personal)

This config is built using **lazy.nvim** and a modular structure.

## 🗂 Folder Structure

```

nvim/
├ init.lua
└ lua/
├ config/     # plugin config files
└ plugins/    # plugin declarations

```

- `lua/plugins/*.lua` → *declare* plugins
- `lua/config/*.lua` → *configure* plugins
- This keeps things clean & scalable.

---

## 🎨 Colorscheme (Catppuccin)

Config file:
```

lua/plugins/catppuccin.lua

````

```lua
return {
  "catppuccin/nvim",
  name = "catppuccin",
  priority = 1000,
  config = function()
    require("catppuccin").setup({ flavour = "mocha" })
    vim.cmd.colorscheme("catppuccin-mocha")
  end,
}
````

Switch flavor (light → dark, etc):

```
:colorscheme catppuccin-latte
:colorscheme catppuccin-frappe
:colorscheme catppuccin-macchiato
:colorscheme catppuccin-mocha
```

---

## 🔍 Telescope (File Finding & Search)

Config:

```
lua/plugins/telescope.lua
```

Keymaps:

| Action            | Keys         |
| ----------------- | ------------ |
| Find files        | `<leader>ff` |
| Search in project | `<leader>fg` |
| List buffers      | `<leader>fb` |
| Search help       | `<leader>fh` |

**Leader = Space** → so e.g. `Space ff`.

---

## 🌲 Treesitter (Syntax Highlighting)

Config:

```
lua/config/treesitter.lua
```

Install/update parsers:

```
:TSUpdate
```

Check installed:

```
:TSInstallInfo
```

---

## 📦 Plugin Manager (lazy.nvim)

Main config:

```
lua/config/lazy.lua
```

Useful commands:

```
:Lazy         # UI
:Lazy sync    # install/update plugins
:Lazy clean   # remove unused plugins
:Lazy reload <plugin-name>
```

---

## 📁 Files & Project Navigation

Set working directory:

```
:cd <path>
:pwd
```

Open file:

```
:e filename
```

Open Telescope file picker:

```
<leader>ff
```

---

## 💾 Creating Files in Telescope

In `find_files`, just **type a new path** and press:

```
Enter → :w
```

→ File is created.

Example:

```
<leader>ff
src/new/thing.c
Enter
:w
```

---

## ⚡ Next Steps (TODO for future config)

* Add `clangd` LSP
* Add `nvim-cmp` autocomplete
* Add build/run keymaps for CMake (`<leader>bd`, `<leader>br`, `F5`)
* Decide dotfiles strategy (likely stow in WSL)

---

## 🧠 Notes to Myself

* Keep plugin config modular
* Don’t add plugins fast — add **when needed**
* Understand each setting before committing

```

---

If you'd like, I can now generate the **exact Treesitter config file**, the **clangd LSP setup**, **or** a clean **dotfiles layout**.

Which do you want next?

```

1. Treesitter config verification
2. clangd + autocomplete
3. dotfiles setup (WSL or Windows)

```
```
