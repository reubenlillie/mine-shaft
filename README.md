# Mine Shaft

_An accessible color scheme for Neovim_

## Color palette

* Light text on a dark background.
* [WCAG AAA compliant](https://www.w3.org/TR/WCAG/#visual-audio-contrast-contrast) for color contrast.

| Color | Hex | Ratio | Normal Text | Large Text |
| :---- | :-- | ----: | :---------- | :--------- |
| [Mine Shaft](http://chir.ag/projects/name-that-color/#2b2b2b) | `#2b2b2b` | `background` | N/A | N/A |
| [Bright Turquoise](http://chir.ag/projects/name-that-color/#00E0E0) | `#00e0e0` | [8.59:1](https://webaim.org/resources/contrastchecker/?fcolor=00E0E0&bcolor=2B2B2B) | AAA | AAA |
| [Chino](http://chir.ag/projects/name-that-color/#D4D0AB) | `#d4d0ab` | [9.04:1](https://webaim.org/resources/contrastchecker/?fcolor=D4D0AB&bcolor=2B2B2B) | AAA | AAA |
| [Conifer](http://chir.ag/projects/name-that-color/#ABE338) | `#abe338` | [9.29:1](https://webaim.org/resources/contrastchecker/?fcolor=ABE338&bcolor=2B2B2B) | AAA | AAA |
| [Gold](http://chir.ag/projects/name-that-color/#FFD700) | `#ffd700` | [10.09:1](https://webaim.org/resources/contrastchecker/?fcolor=FFD700&bcolor=2B2B2B) | AAA | AAA |
| [Snuff](http://chir.ag/projects/name-that-color/#DCC6E0) | `#dcc6e0` | [8.90:1](https://webaim.org/resources/contrastchecker/?fcolor=DCC6E0&bcolor=2B2B2B) | AAA | AAA |
| [Spring Wood](http://chir.ag/projects/name-that-color/#F8F8F2) | `#f8f8f2` | [13.28:1](https://webaim.org/resources/contrastchecker/?fcolor=F8F8F2&bcolor=2B2B2B) | AAA | AAA |
| [Vivid Tangerine](http://chir.ag/projects/name-that-color/#FFA07A) | `#ffa07a` | [7.12:1](https://webaim.org/resources/contrastchecker/?fcolor=FFA07A&bcolor=2B2B2B) | AAA | AAA |

## Requirements

* [Neovim] >= 0.8.0

## Supported plugins

* [NvimTree](https://github.com/nvim-tree/nvim-tree.lua)

## Install

```lua
-- Packer
use 'reubenlillie/mine-shaft'
```

```vim
" Vim-Plug
Plug 'reubenlillie/mine-shaft'
```

## Use

```lua
-- Lua
vim.cmd[[colorscheme mine-shaft]]
```

```vim
" Vim script
colorscheme mine-shaft
```

## Credits

The color palette is inspired by [Eric Bailey’s](https://github.com/ericwbailey) [a11y-syntax-highlighting](https://github.com/ericwbailey/a11y-syntax-highlighting).

The code base takes cues from [Mofiqul’s](https://github.com/Mofiqul) conversion of Vim’s default [dracula color scheme to Lua](https://github.com/Mofiqul/dracula.nvim).
