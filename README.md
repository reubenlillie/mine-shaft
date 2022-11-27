<div align="center">
  <h1>⛏️ Mine Shaft</h1>
  <p><em>An accessible color scheme for Neovim written in Lua</em></p>
</div>
<p align="center">
  <!--Release-->
  <a href="https://github.com/reubenlillie/mine-shaft/releases"><img alt="GitHub release (latest by date including pre-releases)" src="https://img.shields.io/github/v/release/reubenlillie/mine-shaft?include_prereleases&label=%F0%9F%8F%B7%EF%B8%8F%20Latest&colorA=2b2b2b&colorB=d4d0ab&style=for-the-badge"></a>
  <!--Issues-->
  <a href="https://github.com/reubenlillie/mine-shaft/issues"><img alt="GitHub issues open" src="https://img.shields.io/github/issues/reubenlillie/mine-shaft?label=%E2%9D%97%20Issues&colorA=2b2b2b&colorB=ffa07a&style=for-the-badge"></a>
  <!--Stars-->
  <a href="https://github.com/reubenlillie/mine-shaft/stargazers"><img alt="GitHub repo stars" src="https://img.shields.io/github/stars/reubenlillie/mine-shaft?label=%F0%9F%8C%9F%20Stars&colorA=2b2b2b&colorB=ffd700&style=for-the-badge"></a>
  <!--Forks-->
  <a href="https://github.com/reubenlillkie/mine-shaft/network/members"><img alt="GitHub forks" src="https://img.shields.io/github/forks/reubenlillie/mine-shaft?label=%F0%9F%94%B1%20Forks&colorA=2b2b2b&colorB=abe338&style=for-the-badge"></a>
  <!--Contributors-->
  <a href="https://github.com/reubenlillkie/mine-shaft/contributors"><img alt="GitHub contributors" src="https://img.shields.io/github/contributors/reubenlillie/mine-shaft?label=%F0%9F%91%B7%20Contributors&colorA=2b2b2b&colorB=e3aaa2&style=for-the-badge"></a>
  <!--Commits since lastest relase-->
  <a href="https://github.com/reubenlillie/mine-shaft/commits/v1.0.0"><img alt="GitHub commits since latest release (by date including pre-releases)" src="https://img.shields.io/github/commits-since/reubenlillie/mine-shaft/v0.1.1/v1.0.0?include_prereleases&colorA=2b2b2b&colorB=dcc6e0&logo=git&style=for-the-badge"></a>
</p>

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

## 📋 Requirements

* [Neovim](https://github.com/neovim/neovim/wiki/Installing-Neovim) >= 0.8.0

## 🔌 Supported plugins

* [NvimTree](https://github.com/nvim-tree/nvim-tree.lua)
* 💌 _Submit an issue—better yet, a pull request—for other plugins_

## ⬇️ Install

### Option A: with your preferred package manager

#### [Packer](https://github.com/wbthomason/packer.nvim)

```lua
use 'reubenlillie/mine-shaft'
```

#### [Vim-Plug](https://github.com/junegunn/vim-plug)

```vim
Plug 'reubenlillie/mine-shaft'
```

### Option B: manually

```cli
$ mkdir -p ~/.local/share/nvim/site/pack/mine-shaft/start/
$ cd ~/.local/share/nvim/site/pack/mine-shaft/start/
$ git clone https://github.com/reubenlillie/mine-shaft.git
```

For more information, type the command [`:help packages`][nvim-help-packages] in Neovim or read the [Neovim user documentation][nvim-help-packages] online.

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
* Code base takes cues from:
  - 🧛 [Mofiqul’s](https://github.com/Mofiqul) conversion of Vim’s default [dracula color scheme](https://github.com/Mofiqul/dracula.nvim) to Lua
  - 🦊 [EastEden](https://github.com/EdenEast)’s [Nightfox](https://github.com/EdenEast/nightfox.nvim)

[nvim-help-packages]: https://neovim.io/doc/user/repeat.html#packages
