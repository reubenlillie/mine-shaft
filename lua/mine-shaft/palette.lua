-- @file Defines a table of hexadecimal 🎨 color codes
-- @author Reuben L. Lillie <https://zirk.us/@reubenlillie>
-- @since 0.1.0
-- @since 1.0.0 Add palette metadata
--              Rearrange palette from roygbiv to cterm-color order @see :help cterm-colors

-- Declare a local table to return public module functions
local M = {}

-- Metadata for the color palette
M.meta = {
  name = 'mine-shaft',
  background = 'dark',
  inspiredBy = 'https://github.com/ericwbailey/a11y-syntax-highlighting#a11y-dark'
}

-- The 🎨 color palette
M.palette = {
  -- Black: {@link http://chir.ag/projects/name-that-color/#2b2b2b Cod Gray}
  -- Added to palette specifically for the `CursorLine` highlight group
  black = '#0b0b0b',

  -- Red: {@link http://chir.ag/projects/name-that-color/#ffa07a Vivid Tangerine}
  red = '#ffa07a',

  -- Green: {@link http://chir.ag/projects/name-that-color/#abe338 Conifer}
  green = '#abe338',

  -- Yellow: {@link http://chir.ag/projects/name-that-color/#ffd700 Gold}
  yellow = '#ffd700',

  -- Light Gray: {@link http://chir.ag/projects/name-that-color/#d4d0ab Chino}
  lightGray = '#d4d0ab',

  -- Black: {@link http://chir.ag/projects/name-that-color/#2b2b2b Mine Shaft}
  darkGray = '#2b2b2b',

  -- Blue: {@link http://chir.ag/projects/name-that-color/#00e0e0 Bright Turquoise}
  blue = '#00e0e0',

  -- DarkMagenta: {@link http://chir.ag/projects/name-that-color/#dcc6e0 Snuff}
  purple = '#dcc6e0',

  -- LightMagenta: {@link http://chir.ag/projects/name-that-color/#e3aaa2 Pink}
  -- Added to palette specifically for `Special` highlight group
  pink = '#e3aaa2',

  -- White: {@link http://chir.ag/projects/name-that-color/#f8f8f2 Spring Wood}
  white = '#f8f8f2',
}

return M
