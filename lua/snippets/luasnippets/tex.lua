local ls = require("luasnip")
local s  = ls.snippet
local t  = ls.text_node
local i  = ls.insert_node
local f = ls.function_node

return {
  s({trig="mk", snippetType='autosnippet'}, {
    t("$"),
    i(1, ""),
    t("$"),
  }),
  s({trig = "bm([a-zA-Z0-9])", priority=1001, regTrig = true},
      f(function(_, snip) return "\\bm{" .. snip.captures[1] .. "}" end, {})
  ),
  s({trig="...", snippetType='autosnippet', priority=1001}, { t("\\ldots") }),
  s({trig = "~([a-zA-Z0-9])", regTrig = true},
      f(function(_, snip) return "\\widetilde{" .. snip.captures[1] .. "}" end, {})
  ),
  s({trig = "tm([a-zA-Z0-9])", priority=1001, regTrig = true},
      f(function(_, snip) return "\\mathcal{" .. snip.captures[1] .. "}" end, {})
  ),
  s({trig="tx", snippetType='snippet'}, {
    t("\\text{"),
    i(1, ""),
    t("}"),
  }),
  s({trig="dm", snippetType='autosnippet'}, {
    t({"\\[", ""}),
    i(1, ""),
    t({"", "\\]", ""}),
  }),
  s({trig="{", snippetType='snippet', desc='pointy bracket', wordTrig=false}, {
    t("{"),
    i(1, ""),
    t("}"),
  }),
  s({trig="(", snippetType='snippet', desc='parenthesis', wordTrig=false}, {
    t("("),
    i(1, ""),
    t(")"),
  }),
  s({trig="[", snippetType='snippet', wordTrig=false}, {
    t("["),
    i(1, ""),
    t("]"),
  }),
  s({trig="'", snippetType='snippet'}, {
    t("^{\\T}"),
  }),
  s({trig="mr", snippetType='snippet'}, {
    t("\\mathbb{R}"),
  }),
  s({trig="me", snippetType='snippet'}, {
    t("\\mathbb{E}"),
  }),
  s({trig="td", snippetType='snippet', desc='upperscript', wordTrig=false}, {
    t("^{"),
    i(1, ""),
    t("}"),
  }),
  s({trig="sr", snippetType='autosnippet', wordTrig=false}, {
    t("^2"),
  }),
  s({trig="nat", snippetType='snippet'}, {
    t("\\natural"),
  }),
  s({trig="set", snippetType='snippet'}, {
    t("\\set{"),
    i(1, ""),
    t("}"),
  }),
  s({trig="bs", snippetType='snippet'}, {
    t("\\boldsymbol"),
  }),
  s({trig="Del", snippetType='snippet'}, {
    t("\\Delta"),
  }),
  s({trig="the", snippetType='snippet'}, {
    t("\\theta"),
  }),
  s({trig="Ome", snippetType='snippet'}, {
    t("\\Omega"),
  }),
  s({trig="lam", snippetType='snippet'}, {
    t("\\lambda"),
  }),
  s({trig="alp", snippetType='snippet'}, {
    t("\\alpha"),
  }),
  s({trig="eps", snippetType='snippet'}, {
    t("\\epsilon"),
  }),
  s({trig="del", snippetType='snippet'}, {
    t("\\delta"),
  }),
  s({trig="sig", snippetType='snippet'}, {
    t("\\sigma"),
  }),
  s({trig="star", snippetType='snippet'}, {
    t("\\star"),
  }),
  s({trig="fro", snippetType='snippet'}, {
    t("_{\\rm F}"),
  }),
  s({trig="inf", snippetType='snippet'}, {
    t("\\infty"),
  }),
  s({trig="ff", snippetType='snippet'}, {
    t("\\quad \\forall "),
  }),
  s({trig = "~([a-zA-Z0-9])", priority=1001, regTrig = true},
      f(function(_, snip) return "\\widetilde{" .. snip.captures[1] .. "}" end, {})
  ),
  s({trig="~", snippetType='snippet'}, {
    t("\\widetilde{"),
    i(1, ""),
    t("}"),
  }),
  s({trig="hat", snippetType='snippet'}, {
    t("\\widehat{"),
    i(1, ""),
    t("}"),
  }),

  s({trig="optimization", snippetType='snippet'}, {
    t({"\\begin{alignat*}{2}", 
    "&\\minimize_{"}), i(1, ""), t("} \\quad && "), i(2, ""), t({"\\\\", ""}),
    t("&\\text{subject to} && "), i(3, ""),
    t({"", "\\end{alignat*}"})
  }),

}

