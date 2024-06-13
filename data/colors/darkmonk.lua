local style = require "core.style"
local common = require "core.common"

style.background               = { common.color "#010101" }
style.background2              = { common.color "#080808" }
style.background3              = { common.color "#010101" }
style.text                     = { common.color "#707070" }
style.caret                    = { common.color "#888888" }
style.accent                   = { common.color "#d0d0d0" }
style.dim                      = { common.color "#303030" }
style.divider                  = { common.color "#080808" }
style.selection                = { common.color "#631919" }
style.line_number              = { common.color "#202020" }
style.line_number2             = { common.color "#707070" }
style.line_highlight           = { common.color "#101010" }
style.scrollbar                = { common.color "#252525" }
style.scrollbar2               = { common.color "#303030" }
style.scrollbar_track          = { common.color "#252529" }
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

-- am not too satisfied with the naming, will get a new list
style.syntax["aliceblue"]      = { common.color "#F0F8FF" }
style.syntax["antiquewhite"]   = { common.color "#FAEBD7" }
style.syntax["aqua"]           = { common.color "#00FFFF" }
style.syntax["aquamarine"]     = { common.color "#7FFFD4" }
style.syntax["azure"]          = { common.color "#0080FF" }
style.syntax["beige"]          = { common.color "#F5F5DC" }
style.syntax["bisque"]         = { common.color "#FFE4C4" }
style.syntax["black"]          = { common.color "#000000" }
style.syntax["blanchedalmond"] = { common.color "#FFEBCD" }
style.syntax["blue"]           = { common.color "#0000FF" }
style.syntax["blueviolet"]     = { common.color "#8A2BE2" }
style.syntax["brown"]          = { common.color "#A52A2A" }
style.syntax["burlywood"]      = { common.color "#DEB887" }
style.syntax["cadetblue"]      = { common.color "#5F9EA0" }
style.syntax["chartreuse"]     = { common.color "#7FFF00" }
style.syntax["choco"]          = { common.color "#FF7F50" }
style.syntax["cornflowerblue"] = { common.color "#6495ED" }
style.syntax["cornsilk"]       = { common.color "#FFF8DC" }
style.syntax["crimson"]        = { common.color "#DC143C" }
style.syntax["cyan"]           = { common.color "#00FFFF" }
style.syntax["darkblue"]       = { common.color "#00008B" }
style.syntax["darkcyan"]       = { common.color "#008B8B" }
style.syntax["darkgoldenrod"]  = { common.color "#B8860B" }
style.syntax["darkgray"]       = { common.color "#A9A9A9" }
style.syntax["darkgreen"]      = { common.color "#006400" }
style.syntax["darkkhaki"]      = { common.color "#BDB76B" }
style.syntax["darkmagenta"]    = { common.color "#8B008B" }
style.syntax["darkolivegreen"] = { common.color "#556B2F" }
style.syntax["darkorange"]     = { common.color "#FF8C00" }
style.syntax["darkorchid"]     = { common.color "#9932CC" }
style.syntax["darkred"]        = { common.color "#8B0000" }
style.syntax["darksalmon"]     = { common.color "#E9967A" }
style.syntax["darkseagreen"]   = { common.color "#8FBC8F" }
style.syntax["darkslateblue"]  = { common.color "#483D8B" }
style.syntax["darkslategray"]  = { common.color "#2F4F4F" }
style.syntax["darkturquoise"]  = { common.color "#00CED1" }
style.syntax["darkviolet"]     = { common.color "#9400D3" }
style.syntax["deeppink"]       = { common.color "#FF1493" }
style.syntax["deepred"]        = { common.color "#C10023" }
style.syntax["deepskyblue"]    = { common.color "#00BFFF" }
style.syntax["dimgray"]        = { common.color "#696969" }
style.syntax["dodgerblue"]     = { common.color "#1E90FF" }
style.syntax["firebrick"]      = { common.color "#B22222" }
style.syntax["floralwhite"]    = { common.color "#FFFAF0" }
style.syntax["forestgreen"]    = { common.color "#228B22" }
style.syntax["fuchsia"]        = { common.color "#FF00FF" }
style.syntax["gainsboro"]      = { common.color "#DCDCDC" }
style.syntax["ghostwhite"]     = { common.color "#F8F8FF" }
style.syntax["gold"]           = { common.color "#FFD700" }
style.syntax["goldenrod"]      = { common.color "#DAA520" }
style.syntax["gray"]           = { common.color "#808080" }
style.syntax["green"]          = { common.color "#008000" }
style.syntax["greenyellow"]    = { common.color "#ADFF2F" }
style.syntax["honeydew"]       = { common.color "#F0FFF0" }
style.syntax["hotpink"]        = { common.color "#FF69B4" }
style.syntax["indianred"]      = { common.color "#CD5C5C" }
style.syntax["indigo"]         = { common.color "#4B0082" }
style.syntax["ivory"]          = { common.color "#FFFFF0" }
style.syntax["khaki"]          = { common.color "#F0E68C" }
style.syntax["lavender"]       = { common.color "#E6E6FA" }
style.syntax["lavenderblush"]  = { common.color "#FFF0F5" }
style.syntax["lawngreen"]      = { common.color "#7CFC00" }
style.syntax["lemonchiffon"]   = { common.color "#FFFACD" }
style.syntax["lightblue"]      = { common.color "#ADD8E6" }
style.syntax["lightcoral"]     = { common.color "#F08080" }
style.syntax["lightcyan"]      = { common.color "#E0FFFF" }
style.syntax["lightgolden"]    = { common.color "#FAFAD2" }
style.syntax["lightgray"]      = { common.color "#D3D3D3" }
style.syntax["lightgreen"]     = { common.color "#90EE90" }
style.syntax["lightpink"]      = { common.color "#FFB6C1" }
style.syntax["lightsalmon"]    = { common.color "#FFA07A" }
style.syntax["lightseagreen"]  = { common.color "#20B2AA" }
style.syntax["lightskyblue"]   = { common.color "#87CEFA" }
style.syntax["lightslategray"] = { common.color "#778899" }
style.syntax["lightsteelblue"] = { common.color "#B0C4DE" }
style.syntax["lightyellow"]    = { common.color "#FFFFE0" }
style.syntax["lime"]           = { common.color "#00FF00" }
style.syntax["limegreen"]      = { common.color "#32CD32" }
style.syntax["linen"]          = { common.color "#FAF0E6" }
style.syntax["magenta"]        = { common.color "#FF00FF" }
style.syntax["maroon"]         = { common.color "#800000" }
style.syntax["m_aquamarine"]   = { common.color "#66CDAA" }
style.syntax["m_blue"]         = { common.color "#0000CD" }
style.syntax["m_orchid"]       = { common.color "#BA55D3" }
style.syntax["m_purple"]       = { common.color "#9370DB" }
style.syntax["m_seagreen"]     = { common.color "#3CB371" }
style.syntax["m_slateblue"]    = { common.color "#7B68EE" }
style.syntax["m_bluegreen"]    = { common.color "#00FA9A" }
style.syntax["m_turquoise"]    = { common.color "#48D1CC" }
style.syntax["m_violetred"]    = { common.color "#C71585" }
style.syntax["midnightblue"]   = { common.color "#191970" }
style.syntax["mintcream"]      = { common.color "#F5FFFA" }
style.syntax["mistyrose"]      = { common.color "#FFE4E1" }
style.syntax["moccasin"]       = { common.color "#FFE4B5" }
style.syntax["navajowhite"]    = { common.color "#FFDEAD" }
style.syntax["navy"]           = { common.color "#000080" }
style.syntax["oldlace"]        = { common.color "#FDF5E6" }
style.syntax["olive"]          = { common.color "#808000" }
style.syntax["olivedrab"]      = { common.color "#6B8E23" }
style.syntax["orange"]         = { common.color "#FFA500" }
style.syntax["orangered"]      = { common.color "#FF4500" }
style.syntax["orchid"]         = { common.color "#DA70D6" }
style.syntax["palegoldenrod"]  = { common.color "#EEE8AA" }
style.syntax["palegreen"]      = { common.color "#98FB98" }
style.syntax["paleturquoise"]  = { common.color "#AFEEEE" }
style.syntax["palevioletred"]  = { common.color "#DB7093" }
style.syntax["papayawhip"]     = { common.color "#FFEFD5" }
style.syntax["peachpuff"]      = { common.color "#FFDAB9" }
style.syntax["peru"]           = { common.color "#CD853F" }
style.syntax["pink"]           = { common.color "#FFC0CB" }
style.syntax["plum"]           = { common.color "#DDA0DD" }
style.syntax["powderblue"]     = { common.color "#B0E0E6" }
style.syntax["purple"]         = { common.color "#800080" }
style.syntax["red"]            = { common.color "#FF0000" }
style.syntax["rosybrown"]      = { common.color "#BC8F8F" }
style.syntax["royalblue"]      = { common.color "#4169E1" }
style.syntax["saddlebrown"]    = { common.color "#8B4513" }
style.syntax["salmon"]         = { common.color "#FA8072" }
style.syntax["sandybrown"]     = { common.color "#F4A460" }
style.syntax["seagreen"]       = { common.color "#2E8B57" }
style.syntax["seashell"]       = { common.color "#FFF5EE" }
style.syntax["sienna"]         = { common.color "#A0522D" }
style.syntax["silver"]         = { common.color "#C0C0C0" }
style.syntax["skyblue"]        = { common.color "#87CEEB" }
style.syntax["slateblue"]      = { common.color "#6A5ACD" }
style.syntax["slategray"]      = { common.color "#708090" }
style.syntax["snow"]           = { common.color "#FAFAFF" }
style.syntax["springgreen"]    = { common.color "#00FF7F" }
style.syntax["steelblue"]      = { common.color "#4682B4" }
style.syntax["tannish"]        = { common.color "#D2B48C" }
style.syntax["teal"]           = { common.color "#008080" }
style.syntax["thistle"]        = { common.color "#D8BFD8" }
style.syntax["tomato"]         = { common.color "#FF6347" }
style.syntax["turquoise"]      = { common.color "#40E0D0" }
style.syntax["violet"]         = { common.color "#EE82EE" }
style.syntax["wheat"]          = { common.color "#F5DEB3" }
style.syntax["white"]          = { common.color "#FFFFFF" }
style.syntax["whitesmoke"]     = { common.color "#F5F5F5" }
style.syntax["yellow"]         = { common.color "#FFFF00" }
style.syntax["yellowgreen"]    = { common.color "#9ACD32" }
