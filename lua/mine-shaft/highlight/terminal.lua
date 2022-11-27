-- @file Defines the color number arguments for the terminal
-- @author Reuben L. Lillie <https://zirk.us/@reubenlillie>
-- @since 1.0.0
-- @see :help terminal-config

-- Declare a local table to return public module functions
local M = {}

-- Set the color number arguments used to color the terminal
-- @see :help ctermfg
-- @see :help termguicolors
function M.highlight(palette)
  -- Access the color palette
  -- @see lua/mine-shaft/palette.lua
  local p = palette

  -- Terminal colors
  -- Generic color names commented inline
  -- @see :help cterm-colors
  return {
    terminal_color_0 = p.black, -- Black
    terminal_color_8 = p.darkGray, -- DarkGray

    terminal_color_1 = p.red, -- DarkRed
    terminal_color_9 = p.red, -- LightRed

    terminal_color_2 = p.green, -- DarkGreen
    terminal_color_10 = p.green, -- LightGreen

    terminal_color_3 = p.yellow, -- DarkYellow
    terminal_color_11 = p.yellow, -- LightYellow

    terminal_color_4 = p.blue, -- DarkBlue
    terminal_color_12 = p.blue, -- LightBlue

    terminal_color_5 = p.purple, -- DarkMagenta
    terminal_color_13 = p.pink, --LightMagenta

    terminal_color_6 = p.blue, -- DarkCyan
    terminal_color_14 = p.blue, -- LightCyan

    terminal_color_7 = p.lightGray, -- LightGray
    terminal_color_15 = p.white, -- White
  }
end

return M
