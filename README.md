# ⛏️ Mine Shaft

_An accessible color scheme for Neovim written in Lua_

## 🧪 Code sample

![The Mine Shaft color scheme applied to HTML in Neovim with the NvimTree. Screenshot](/images/test.html.png)

## 🎨 Color palette

* Light text on a dark background
* Ratios meet or exceed [WCAG AAA](https://www.w3.org/TR/WCAG/#contrast-enhanced) criteria for enhanced contrast

| Color | Hex | Ratio | Normal Text | Large Text |
| :---- | :-- | ----: | :---------- | :--------- |
| [Mine Shaft](http://chir.ag/projects/name-that-color/#2b2b2b) | `#2b2b2b` | `background` | N/A | N/A |
| [Bright Turquoise](http://chir.ag/projects/name-that-color/#00e0e0) | `#00e0e0` | [8.59:1](https://webaim.org/resources/contrastchecker/?fcolor=00E0E0&bcolor=2B2B2B) | AAA | AAA |
| [Chino](http://chir.ag/projects/name-that-color/#d4d0ab) | `#d4d0ab` | [9.04:1](https://webaim.org/resources/contrastchecker/?fcolor=D4D0AB&bcolor=2B2B2B) | AAA | AAA |
| [Conifer](http://chir.ag/projects/name-that-color/#abe338) | `#abe338` | [9.29:1](https://webaim.org/resources/contrastchecker/?fcolor=ABE338&bcolor=2B2B2B) | AAA | AAA |
| [Gold](http://chir.ag/projects/name-that-color/#ffd700) | `#ffd700` | [10.09:1](https://webaim.org/resources/contrastchecker/?fcolor=FFD700&bcolor=2B2B2B) | AAA | AAA |
| [Shilo](http://chir.ag/projects/name-that-color/#e3aaa2) | `#e3aaa2` | [7.1:1](https://webaim.org/resources/contrastchecker/?fcolor=E3AAA2&bcolor=2B2B2B) | AAA | AAA |
| [Snuff](http://chir.ag/projects/name-that-color/#dcc6e0) | `#dcc6e0` | [8.90:1](https://webaim.org/resources/contrastchecker/?fcolor=DCC6E0&bcolor=2B2B2B) | AAA | AAA |
| [Spring Wood](http://chir.ag/projects/name-that-color/#f8f8f2) | `#f8f8f2` | [13.28:1](https://webaim.org/resources/contrastchecker/?fcolor=F8F8F2&bcolor=2B2B2B) | AAA | AAA |
| [Vivid Tangerine](http://chir.ag/projects/name-that-color/#ffa07a) | `#ffa07a` | [7.12:1](https://webaim.org/resources/contrastchecker/?fcolor=FFA07A&bcolor=2B2B2B) | AAA | AAA |

## 🧵 Requirements

* [Neovim](https://github.com/neovim/neovim/wiki/Installing-Neovim) >= 0.8.0

## 🔌 Supported plugins

* [NvimTree](https://github.com/nvim-tree/nvim-tree.lua)
* 💌 _Submit an issue—better yet, a pull request—for other plugins_

## ⬇️ Install

Install _Mine Shaft_ with your preferred package manager:

### [Packer](https://github.com/wbthomason/packer.nvim)

```lua
use 'reubenlillie/mine-shaft'
```

### [Vim-Plug](https://github.com/junegunn/vim-plug)

```vim
Plug 'reubenlillie/mine-shaft'
```

## 🖌️ Use

Enable the color scheme:

### Lua

```lua
vim.cmd[[colorscheme mine-shaft]]
```

### Vim script

```vim
colorscheme mine-shaft
```

## 👷 Contributing

* 🫶 Pull requests are welcome!
* 📌 Check out the [Code of Conduct](/CODE_OF_CONDUCT.md)

## 🏆 Colophon

* ♿ Color palette adapted from [Eric Bailey’s](https://github.com/ericwbailey) [a11y-syntax-highlighting](https://github.com/ericwbailey/a11y-syntax-highlighting)

* 🧛 Code base takes cues from [Mofiqul’s](https://github.com/Mofiqul) conversion of Vim’s default [dracula color scheme](https://github.com/Mofiqul/dracula.nvim) to Lua
