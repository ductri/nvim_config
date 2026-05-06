local ls = require("luasnip")
local s  = ls.snippet
local t  = ls.text_node
local i  = ls.insert_node
local f = ls.function_node

return {
  s("hi", {
    t("hello 2 "),
    i(1, "world"),
  }),
}

