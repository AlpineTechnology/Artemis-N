assert(sethiddentproperty, "sethiddenproperty not supported, please use another exploit.")
assert(type(syn) == "table", "syn library not supported, please use another exploit.")
assert(syn.protect_gui, "protect_gui not supported, please use another exploit.")

function protect(g)
  assert(typeof(g) == "Instance" and g:IsA("LuaSourceContainer"), "GUI expected")

  sethiddenproperty(g, "OnTopOfCoreBlur", true)
  syn.protect_gui(g)
end

local rbxmSuite = loadstring(game:HttpGetAsync("https://raw.githubusercontent.com/richie0866/rbxm-suite/master/src/rbxm-suite.lua"))()
local getRel = rbxmSuite.download("AlpineTechnology/Artemis-N@latest", "Artemis.N.-.v1.0.0.rbxm")
local project = rbxmSuite.launch(getRel, {runscripts = true})
protect(project)
--[[
FUNCTIONS:
shared.Add(args: table) -- Add Themes
shared.Set(theme_name: string) -- Sets the Theme

CURRENT OFFICIAL THEMES:
"EggShell", "EggShellInv"
]]
