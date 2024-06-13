-- mod-version:3
local syntax = require "core.syntax"

syntax.add {
  name = "Apache Lua Module",
  files = "%.mod.lua$",
  headers = "^#!.*[ /]mod_lua",
  comment = "--",
  block_comment = { "--[[", "]]" },
  patterns = {
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
    { pattern = "<%a+>",                     type = "keyword2" },
    { pattern = "%.%.%.?",                   type = "operator" },
    { pattern = "[<>~=]=",                   type = "operator" },
    { pattern = "[%+%-=/%*%^%%#<>]",         type = "operator" },
    { pattern = "[%a_][%w_]*()%s*%f[(\"'{]", type = {"function", "normal"} },
    { pattern = "[%a_][%w_]*",               type = "symbol" },
    { pattern = "::[%a_][%w_]*::",           type = "function" },
  },
  symbols = {
    ["if"]       = "keyword",
    ["then"]     = "keyword",
    ["else"]     = "keyword",
    ["elseif"]   = "keyword",
    ["end"]      = "keyword",
    ["do"]       = "keyword",
    ["function"] = "keyword",
    ["repeat"]   = "keyword",
    ["until"]    = "keyword",
    ["while"]    = "keyword",
    ["for"]      = "keyword",
    ["break"]    = "keyword",
    ["return"]   = "keyword",
    ["local"]    = "keyword",
    ["in"]       = "keyword",
    ["not"]      = "keyword",
    ["and"]      = "keyword",
    ["or"]       = "keyword",
    ["goto"]     = "keyword",
    ["self"]     = "keyword2",
    ["true"]     = "literal",
    ["false"]    = "literal",
    ["nil"]      = "literal",

  -- Name	                                   Luatype	Writable	Description
    ["allowoverrides"]        = "keyword",   -- string	no	The AllowOverride options applied to the current request.
    ["ap_auth_type"]          = "keyword",   -- string	no	If an authentication check was made, this is set to the type of authentication (f.x. basic)
    ["args"]                  = "keyword",   -- string	yes	The query -- string arguments extracted from the request (f.x. foo=bar&name=johnsmith)
    ["assbackwards"]          = "literal",   -- boolean	no	Set to true if this is an HTTP/0.9 style request (e.g. GET /foo (with no headers) )
    ["auth_name"]             = "keyword",   -- string	no	The realm name used for authorization (if applicable).
    ["banner"]                = "keyword",   -- string	no	The server banner, f.x. Apache HTTP Server/2.4.3 openssl/0.9.8c
    ["basic_auth_pw"]         = "keyword",   -- string	no	The basic auth password sent with this request, if any
    ["canonical_filename"]    = "keyword",   -- string	no	The canonical filename of the request
    ["content_encoding"]      = "keyword",   -- string	no	The content encoding of the current request
    ["content_type"]          = "keyword",   -- string	yes	The content type of the current request, as determined in the type_check phase (f.x. image/gif or text/html)
    ["context_prefix"]        = "keyword",   -- string	no
    ["context_document_root"] = "keyword",   -- string	no
    ["document_root"]         = "keyword",   -- string	no	The document root of the host
    ["err_headers_out"]       = "operator",  -- table 	no	MIME header environment for the response, printed even on errors and persist across internal redirects. A read-only lua -- table sui-- table for iteration is available as r:err_headers_out_-- table().
    ["filename"]              = "keyword",   -- string	yes	The file name that the request maps to, f.x. /www/example.com/foo.txt. This can be changed in the pre-translate-name, translate-name or map-to-storage phases of a request to allow the default handler (or script handlers) to serve a different file than what was requested.
    ["handler"]               = "keyword",   -- string	yes	The name of the handler that should serve this request, f.x. lua-script if it is to be served by mod_lua. This is typically set by the AddHandler or SetHandler directives, but could also be set via mod_lua to allow another handler to serve up a specific request that would otherwise not be served by it.
    ["headers_in"]            = "operator",  -- table 	yes	MIME header environment from the request. This contains headers such as Host, User-Agent, Referer and so on. A read-only lua -- table sui-- table for iteration is available as r:headers_in_-- table().
    ["headers_out"]           = "operator",  -- table 	yes	MIME header environment for the response. A read-only lua -- table sui-- table for iteration is available as r:headers_out_-- table().
    ["hostname"]              = "keyword",   -- string	no	The host name, as set by the Host: header or by a full URI.
    ["is_https"]              = "literal",   -- boolean	no	Whether or not this request is done via HTTPS
    ["is_initial_req"]        = "literal",   -- boolean	no	Whether this request is the initial request or a sub-request
    ["limit_req_body"]        = "number",    -- number	no	The size limit of the request body for this request, or 0 if no limit.
    ["log_id"]                = "keyword",   -- string	no	The ID to identify request in access and error log.
    ["method"]                = "keyword",   -- string	no	The request method, f.x. GET or POST.
    ["notes"]                 = "operator",  -- table 	yes	A list of notes that can be passed on from one module to another. A read-only lua -- table sui-- table for iteration is available as r:notes_-- table().
    ["options"]               = "keyword",   -- string	no	The Options directive applied to the current request.
    ["path_info"]             = "keyword",   -- string	no	The PATH_INFO extracted from this request.
    ["port"]                  = "number",    -- number	no	The server port used by the request.
    ["protocol"]              = "keyword",   -- string	no	The protocol used, f.x. HTTP/1.1
    ["proxyreq"]              = "keyword",   -- string	yes	Denotes whether this is a proxy request or not. This value is generally set in the post_read_request/pre_translate_name/translate_name phase of a request.
    ["range"]                 = "keyword",   -- string	no	The contents of the Range: header.
    ["remaining"]             = "number",    -- number	no	The -- number of bytes remaining to be read from the request body.
    ["server_built"]          = "keyword",   -- string	no	The time the server execu-- table was built.
    ["server_name"]           = "keyword",   -- string	no	The server name for this request.
    ["some_auth_required"]    = "literal",   -- boolean	no	Whether some authorization is/was required for this request.
    ["subprocess_env"]        = "operator",  -- table 	yes	The environment variables set for this request. A read-only lua -- table sui-- table for iteration is available as r:subprocess_env_-- table().
    ["started"]               = "number",    -- number	no	The time the server was (re)started, in seconds since the epoch (Jan 1st, 1970)
    ["status"]                = "number",    -- number	yes	The (current) HTTP return code for this request, f.x. 200 or 404.
    ["the_request"]           = "keyword",   -- string	no	The request -- string as sent by the client, f.x. GET /foo/bar HTTP/1.1.
    ["unparsed_uri"]          = "keyword",   -- string	no	The unparsed URI of the request
    ["uri"]                   = "keyword",   -- string	yes	The URI after it has been parsed by httpd
    ["user"]                  = "keyword",   -- string	yes	If an authentication check has been made, this is set to the name of the authenticated user.
    ["useragent_ip"]          = "keyword",   -- string	no	The IP of the user agent making the request
  },
}
