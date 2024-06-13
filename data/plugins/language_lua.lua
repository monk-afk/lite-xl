-- mod-version:3
local syntax = require "core.syntax"
local style = require "core.style"
local common = require "core.common"

syntax.add {
  name = "Lua",
  files = "%.lua$",
  headers = "^#!.*[ /]lua",
  comment = "--",
  block_comment = { "--[[", "]]" },
  patterns = {
    -->  variable
    { pattern = { '"', '"', '\\' },          type = "double_quote" },
    { pattern = { "'", "'", '\\' },          type = "single_quote" },
    { pattern = { "%[%[", "%]%]" },          type = "square_quote" },

    { pattern = {"%-%-%[%[", "%]%]"},        type = "comment" },
    { pattern = "%-%-.*",                    type = "comment" },

    { pattern = "%.?%d*[eE][-+]?%d+",        type = "number" },
    { pattern = "%d%.%d*[eE][-+]?%d+",       type = "number" },
    { pattern = "0x%x+%.%x*[pP][-+]?%d+",    type = "number" },
    { pattern = "0x%.%x+[pP][-+]?%d+",       type = "number" },
    { pattern = "0x%x+[pP][-+]?%d+",         type = "number" },
    { pattern = "0x%x+%.%x*",                type = "number" },
    { pattern = "0x%.%x+",                   type = "number" },
    { pattern = "%d%.%d*",                   type = "number" },
    { pattern = "%.?%d+",                    type = "number" },
    { pattern = "0x%x+",                     type = "number" },

    { pattern = "%.%.%.",                    type = "vararg" },
    { pattern = "[<>~=]=",                   type = "binop" },
    { pattern = "[%+%-=/%*%^%%#<>]",         type = "binop" },
    { pattern = "%s[%a_][%w_]*()%(.*%)",     type = {"function_name", "white"} },
  },

-- local function fun_name(variable) return print("test", true) end
  symbols = {
    ---===[[[ defined in colors/monkdark.lua ]]]===---
    ["local"]          = "crimson",
    ["function"]       = "m_bluegreen",

    ["break"]          = "terminator",
    ["end"]            = "terminator",
    ["return"]         = "terminator",

    ["do"]             = "iterator",
    ["for"]            = "iterator",
    ["goto"]           = "iterator",
    ["in"]             = "iterator",
    ["repeat"]         = "iterator",
    ["until"]          = "iterator",
    ["while"]          = "iterator",

    ["and"]            = "conditional",
    ["else"]           = "conditional",
    ["elseif"]         = "conditional",
    ["if"]             = "conditional",
    ["not"]            = "conditional",
    ["or"]             = "conditional",
    ["then"]           = "conditional",

    ["false"]          = "boolean",
    ["nil"]            = "boolean",
    ["true"]           = "boolean",

    ["arg"]            = "core_function",
    ["assert"]         = "core_function",
    ["collectgarbage"] = "core_function",
    ["debug"]          = "core_function",
    ["dofile"]         = "core_function",
    ["gethook"]        = "core_function",
    ["getinfo"]        = "core_function",
    ["getlocal"]       = "core_function",
    ["getmetatable"]   = "core_function",
    ["getregistry"]    = "core_function",
    ["getupvalue"]     = "core_function",
    ["getuservalue"]   = "core_function",
    ["ipairs"]         = "core_function",
    ["load"]           = "core_function",
    ["loadfile"]       = "core_function",
    ["loadlib"]        = "core_function",
    ["next"]           = "core_function",
    ["offset"]         = "core_function",
    ["pairs"]          = "core_function",
    ["path"]           = "core_function",
    ["pcall"]          = "core_function",
    ["preload"]        = "core_function",
    ["print"]          = "core_function",
    ["rawequal"]       = "core_function",
    ["rawget"]         = "core_function",
    ["rawlen"]         = "core_function",
    ["rawset"]         = "core_function",
    ["require"]        = "core_function",
    ["searchpath"]     = "core_function",
    ["select"]         = "core_function",
    ["setcstacklimit"] = "core_function",
    ["sethook"]        = "core_function",
    ["setlocal"]       = "core_function",
    ["setmetatable"]   = "core_function",
    ["setupvalue"]     = "core_function",
    ["setuservalue"]   = "core_function",
    ["string"]         = "core_function",
    ["tonumber"]       = "core_function",
    ["tostring"]       = "core_function",
    ["traceback"]      = "core_function",
    ["type"]           = "core_function",
    ["upvalueid"]      = "core_function",
    ["upvaluejoin"]    = "core_function",
    ["warn"]           = "core_function",
    ["xpcall"]         = "core_function",

    ["io"]             = "io_prefix",
      ["close"]          = "io_lib_fn",
      ["flush"]          = "io_lib_fn",
      ["input"]          = "io_lib_fn",
      ["lines"]          = "io_lib_fn",
      ["open"]           = "io_lib_fn",
      ["output"]         = "io_lib_fn",
      ["popen"]          = "io_lib_fn",
      ["read"]           = "io_lib_fn",
      ["stderr"]         = "io_lib_fn",
      ["stdin"]          = "io_lib_fn",
      ["stdout"]         = "io_lib_fn",
      ["tmpfile"]        = "io_lib_fn",
      ["type"]           = "io_lib_fn",
      ["write"]          = "io_lib_fn",

    ["math"]           = "math_prefix",
      ["abs"]            = "math_lib_fn",
      ["acos"]           = "math_lib_fn",
      ["asin"]           = "math_lib_fn",
      ["atan"]           = "math_lib_fn",
      ["atan2"]          = "math_lib_fn",
      ["ceil"]           = "math_lib_fn",
      ["cos"]            = "math_lib_fn",
      ["cosh"]           = "math_lib_fn",
      ["deg"]            = "math_lib_fn",
      ["exp"]            = "math_lib_fn",
      ["floor"]          = "math_lib_fn",
      ["fmod"]           = "math_lib_fn",
      ["frexp"]          = "math_lib_fn",
      ["huge"]           = "math_lib_fn",
      ["ldexp"]          = "math_lib_fn",
      ["log"]            = "math_lib_fn",
      ["log10"]          = "math_lib_fn",
      ["max"]            = "math_lib_fn",
      ["maxinteger"]     = "math_lib_fn",
      ["min"]            = "math_lib_fn",
      ["mininteger"]     = "math_lib_fn",
      ["modf"]           = "math_lib_fn",
      ["pi"]             = "math_lib_fn",
      ["pow"]            = "math_lib_fn",
      ["rad"]            = "math_lib_fn",
      ["random"]         = "math_lib_fn",
      ["randomseed"]     = "math_lib_fn",
      ["sin"]            = "math_lib_fn",
      ["sinh"]           = "math_lib_fn",
      ["sqrt"]           = "math_lib_fn",
      ["tan"]            = "math_lib_fn",
      ["tanh"]           = "math_lib_fn",
      ["tointeger"]      = "math_lib_fn",
      ["type"]           = "math_lib_fn",
      ["ult"]            = "math_lib_fn",

    ["os"]             = "os_prefix",
      ["clock"]          = "os_lib_fn",
      ["date"]           = "os_lib_fn",
      ["difftime"]       = "os_lib_fn",
      ["execute"]        = "os_lib_fn",
      ["exit"]           = "os_lib_fn",
      ["getenv"]         = "os_lib_fn",
      ["remove"]         = "os_lib_fn",
      ["rename"]         = "os_lib_fn",
      ["setlocale"]      = "os_lib_fn",
      ["time"]           = "os_lib_fn",
      ["tmpname"]        = "os_lib_fn",

    ["string"]         = "string_prefix",
      ["byte"]           = "string_lib_fn",
      ["char"]           = "string_lib_fn",
      ["dump"]           = "string_lib_fn",
      ["find"]           = "string_lib_fn",
      ["format"]         = "string_lib_fn",
      ["gmatch"]         = "string_lib_fn",
      ["gsub"]           = "string_lib_fn",
      ["len"]            = "string_lib_fn",
      ["lower"]          = "string_lib_fn",
      ["match"]          = "string_lib_fn",
      ["pack"]           = "string_lib_fn",
      ["packsize"]       = "string_lib_fn",
      ["rep"]            = "string_lib_fn",
      ["reverse"]        = "string_lib_fn",
      ["sub"]            = "string_lib_fn",
      ["unpack"]         = "string_lib_fn",
      ["upper"]          = "string_lib_fn",

    ["table"]          = "table_prefix",
      ["concat"]         = "table_lib_fn",
      ["insert"]         = "table_lib_fn",
      ["move"]           = "table_lib_fn",
      ["pack"]           = "table_lib_fn",
      ["remove"]         = "table_lib_fn",
      ["sort"]           = "table_lib_fn",
      ["unpack"]         = "table_lib_fn",

    ["utf8"]           = "utf8_prefix",
      ["char"]           = "utf8_lib_fn",
      ["charpattern"]    = "utf8_lib_fn",
      ["codepoint"]      = "utf8_lib_fn",
      ["codes"]          = "utf8_lib_fn",
      ["len"]            = "utf8_lib_fn",
  },
}



---------------------------------------------------------
-- Simple Pattern
--   { pattern = "#.*\n",        type = "comment" },
--   This form matches the line against the pattern and if it matches, assigns the matching text to the given token type - comment, in this case.

--   Start & End Pattern
--   { pattern = { "%[", "%]" }, type = "keyword" },
--   This form has two patterns - one that matches against the start of the range and one that matches against the end. Everything between the start and the end will be assigned the given token type.

--   Start & End Pattern, with Escape
--   { pattern = { '"', '"', '\' }, type = "string" },
--   This is the same as the previous form, but with an extra, third parameter. The 3rd part, the '\' part in this example, specifies the character that allows escaping the closing match.

--   For more on Lua Patterns, see: Lua Pattern Reference

--   If you need to use PCRE Regular Expressions, instead of Lua Patterns, you can use the regex keyword here, instead of pattern.
---------------------------------------------------------

-- https://www.lua.org/manual/5.3/manual.html#9

-- 	chunk ::= block

-- 	block ::= {stat} [retstat]

-- 	stat ::=  ‘;’ |
-- 		 varlist ‘=’ explist |
-- 		 functioncall |
-- 		 label |
-- 		 break |
-- 		 goto Name |
-- 		 do block end |
-- 		 while exp do block end |
-- 		 repeat block until exp |
-- 		 if exp then block {elseif exp then block} [else block] end |
-- 		 for Name ‘=’ exp ‘,’ exp [‘,’ exp] do block end |
-- 		 for namelist in explist do block end |
-- 		 function funcname funcbody |
-- 		 local function Name funcbody |
-- 		 local namelist [‘=’ explist]

-- 	retstat ::= return [explist] [‘;’]

-- 	label ::= ‘::’ Name ‘::’

-- 	funcname ::= Name {‘.’ Name} [‘:’ Name]

-- 	varlist ::= var {‘,’ var}

-- 	var ::=  Name | prefixexp ‘[’ exp ‘]’ | prefixexp ‘.’ Name

-- 	namelist ::= Name {‘,’ Name}

-- 	explist ::= exp {‘,’ exp}

-- 	exp ::=  nil | false | true | Numeral | LiteralString | ‘...’ | functiondef |
-- 		 prefixexp | tableconstructor | exp binop exp | unop exp

-- 	prefixexp ::= var | functioncall | ‘(’ exp ‘)’

-- 	functioncall ::=  prefixexp args | prefixexp ‘:’ Name args

-- 	args ::=  ‘(’ [explist] ‘)’ | tableconstructor | LiteralString

-- 	functiondef ::= function funcbody

-- 	funcbody ::= ‘(’ [parlist] ‘)’ block end

-- 	parlist ::= namelist [‘,’ ‘...’] | ‘...’

-- 	tableconstructor ::= ‘{’ [fieldlist] ‘}’

-- 	fieldlist ::= field {fieldsep field} [fieldsep]

-- 	field ::= ‘[’ exp ‘]’ ‘=’ exp | Name ‘=’ exp | exp

-- 	fieldsep ::= ‘,’ | ‘;’

-- 	binop ::=  ‘+’ | ‘-’ | ‘*’ | ‘/’ | ‘//’ | ‘^’ | ‘%’ |
-- 		 ‘&’ | ‘~’ | ‘|’ | ‘>>’ | ‘<<’ | ‘..’ |
-- 		 ‘<’ | ‘<=’ | ‘>’ | ‘>=’ | ‘==’ | ‘~=’ |
-- 		 and | or

-- 	unop ::= ‘-’ | not | ‘#’ | ‘~’
