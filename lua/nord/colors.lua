local named_colors = require("nord.named_colors")

local dark_colors = {
    yellow = named_colors.yellow,
    nord0_gui = named_colors.black, -- x nord0 in palette
    nord1_gui = named_colors.red, -- nord1 in palette
    nord2_gui = named_colors.green, -- nord2 in palette
    nord3_gui = named_colors.warn, -- nord3 in palette
    nord3_gui_bright = named_colors.orange, -- x out of palette x
    nord4_gui = named_colors.debug, -- nord4 in palette x
    nord5_gui = named_colors.info, -- nord5 in palette
    nord6_gui = named_colors.white, -- nord6 in palette
    nord7_gui = named_colors.green, -- nord7 in palette
    nord8_gui = named_colors.green, -- nord8 in palette
    nord10_gui = named_colors.green, -- nord10 in palette
    nord11_gui = named_colors.white, -- nord11 in palette
    nord12_gui = named_colors.blue, -- nord12 in palette
    nord13_gui = named_colors.teal, -- nord13 in palette
    nord14_gui = named_colors.teal, -- nord14 in palette
    nord15_gui = named_colors.none, -- nord15 in palette
    none = "NONE"
}

local light_colors = dark_colors

local nord = (vim.o.background == "dark") and dark_colors or light_colors

-- Enable contrast sidebars, floating windows and popup menus
if vim.g.nord_contrast then
    nord.sidebar = nord.dark
    nord.float = nord.dark
else
    nord.sidebar = nord.nord0_gui
    nord.float = nord.nord0_gui
end

if vim.g.nord_cursorline_transparent then
    nord.cursorlinefg = nord.nord0_gui
else
    nord.cursorlinefg = nord.green
end

return nord
