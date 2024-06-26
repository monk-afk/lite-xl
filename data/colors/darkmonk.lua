local style = require "core.style"
local common = require "core.common"

style.background               = { common.color "#212121" }
style.background2              = { common.color "#080808" }
style.background3              = { common.color "#010101" }
style.text                     = { common.color "#707070" }
style.caret                    = { common.color "#888888" }
style.accent                   = { common.color "#d0d0d0" }
 -- style.dim - text color for nonactive tabs, tabs divider, prefix in log and
 -- search, hotkeys for context menu and command view
style.dim                      = { common.color "#303030" }
style.divider                  = { common.color "#080808" }
style.selection                = { common.color "#631919" }
style.line_number              = { common.color "#202020" }
style.line_number2             = { common.color "#707070" } -- With cursor
style.line_highlight           = { common.color "#101010" }
style.scrollbar                = { common.color "#e52525" } -- The slider
style.scrollbar2               = { common.color "#e52525" } -- Hovering the slider
style.scrollbar_track          = { common.color "#212121" } -- Bar while hovering
style.nagbar                   = { common.color "#FF0000" }
style.nagbar_text              = { common.color "#FFFFFF" }
style.nagbar_dim               = { common.color "rgba(0, 0, 0, 0.45)" }
style.drag_overlay             = { common.color "rgba(255,255,255,0.1)" }
style.drag_overlay_tab         = { common.color "#93DDFA" }
style.good                     = { common.color "#72b886" }
style.warn                     = { common.color "#FFA94D" }
style.error                    = { common.color "#FF3333" }
style.modified                 = { common.color "#1c7c9c" }

style.syntax                   = { common.color "#a1a1a1" }
style.syntax["normal"]         = { common.color "#baabaa" }

style.syntax["local"]          = { common.color "#de0023" }
style.syntax["function"]       = { common.color "#7CFC00" }
style.syntax["conditional"]    = { common.color "#1FAF11" }
style.syntax["iterator"]       = { common.color "#1FAF11" }
style.syntax["terminator"]     = { common.color "#1FAB11" }
style.syntax["boolean"]        = { common.color "#1E90FF" }

style.syntax["comment"]        = { common.color "#898989" }
style.syntax["vararg"]         = { common.color "#6650E1" }
style.syntax["binop"]          = { common.color "#44FFEC" }
style.syntax["number"]         = { common.color "#B5CEA3" }
style.syntax["double_quote"]   = { common.color "#CF8600" }
style.syntax["single_quote"]   = { common.color "#CF9A3A" }
style.syntax["square_quote"]   = { common.color "#9C7836" }

style.syntax["core_function"]  = { common.color "#058D91" }
style.syntax["lib_fn"]         = { common.color "#80500D" }
style.syntax["io_prefix"]      = { common.color "#A1970D" }
style.syntax["math_prefix"]    = { common.color "#A1970D" }
style.syntax["os_prefix"]      = { common.color "#A1970D" }
style.syntax["string_prefix"]  = { common.color "#A1970D" }
style.syntax["table_prefix"]   = { common.color "#A1970D" }
style.syntax["utf8_prefix"]    = { common.color "#A1970D" }

style.syntax["function_name"]  = { common.color "#Fe2D03" }
style.syntax["variable"]       = { common.color "#818181" }
style.syntax["variable_index"] = { common.color "#818181" }

style.syntax["blue"]           = { common.color "#0040FF" }
style.syntax["greenforest"]    = { common.color "#008000" }
style.syntax["darkcyan"]       = { common.color "#008080" }
style.syntax["cyanide"]        = { common.color "#0080C0" }
style.syntax["bluelite"]       = { common.color "#00C0FF" }
style.syntax["cyan"]           = { common.color "#00E4FF" }
style.syntax["green"]          = { common.color "#00FF00" }
style.syntax["greenkawa"]      = { common.color "#00FF40" }
style.syntax["greenlite"]      = { common.color "#00FF80" }
style.syntax["cyangreen"]      = { common.color "#00FFC0" }
style.syntax["blueocean"]      = { common.color "#4000FF" }
style.syntax["reddark"]        = { common.color "#800000" }
style.syntax["brown"]          = { common.color "#804000" }
style.syntax["greenpuke"]      = { common.color "#804000" }
style.syntax["greenlime"]      = { common.color "#80FF00" }
style.syntax["purple"]         = { common.color "#A000FF" }
style.syntax["maroon"]         = { common.color "#C00000" }
style.syntax["violet"]         = { common.color "#C000FF" }
style.syntax["greenyellow"]    = { common.color "#C0FF00" }
style.syntax["red"]            = { common.color "#FF0000" }
style.syntax["crimson"]        = { common.color "#FF0040" }
style.syntax["pink"]           = { common.color "#FF0080" }
style.syntax["hotpink"]        = { common.color "#FF00C0" }
style.syntax["magentadark"]    = { common.color "#FF00FF" }
style.syntax["orangedark"]     = { common.color "#FF8000" }
style.syntax["orangered"]      = { common.color "#FF8000" }
style.syntax["orange"]         = { common.color "#FFC000" }
style.syntax["yellow"]         = { common.color "#FFFF00" }
style.syntax["liteblack"]      = { common.color "#666666" }
style.syntax["darkwhite"]      = { common.color "#999999" }
