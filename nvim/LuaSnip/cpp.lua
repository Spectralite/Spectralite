local ls = require("luasnip")
local s = ls.snippet
local t = ls.text_node
local i = ls.insert_node

return {
  s("cf", {
    t({
      "#include <iostream>",
      "#include <vector>",
      "#include <cmath>",
      "#include <algorithm>",
      "#include <utility>",
      "#include <string>", 
      "#include <set>",
      "using namespace std;",
      "using str = string;", 
      "using ll = long long;",
      "using ull = unsigned ll;",
      "using ld = long double;",
      "using vi = vector<int>;",
      "using vll = vector<ll>;",
      "using vs = vector<string>;",
      "#define pb push_back",
      "#define all(x) begin(x), end(x)",
      "#define sz(x) (int) (x).size()",
      "using pii = pair<int,int>;",
      "using pll = pair<ll,ll>;",
      "#define mp make_pair",
      "void setIO(string name = \"\") {",
      "\tcin.tie(0)->sync_with_stdio(0);", 
      "\tif (sz(name)) {",
      "\t\tfreopen((name + \".in\").c_str(), \"r\", stdin);", 
      "\t\tfreopen((name + \".out\").c_str(), \"w\", stdout);",
      "\t}",
      "}",
      "int main(){ ",
      "    setIO();",
      "    "
    }),
    i(0),
    t({"",
       "}"
    })
  })
}
