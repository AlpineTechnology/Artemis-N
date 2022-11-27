assert(sethiddentproperty, "sethiddenproperty not supported, please use another exploit.")
assert(type(syn) == "table", "syn library not supported, please use another exploit.")
assert(syn.protect_gui, "protect_gui not supported, please use another exploit.")

function protect(g)
  assert(typeof(g) == "Instance" and g:IsA("LuaSourceContainer"), "GUI expected")

  sethiddenproperty(g, "OnTopOfCoreBlur", true)
  syn.protect_gui(g)
end

local rbxmSuite = loadstring(game:HttpGetAsync("https://raw.githubusercontent.com/richie0866/rbxm-suite/master/src/rbxm-suite.lua"))()
local getRel = rbxmSuite.download("AlpineTechnology/Artemis-N@latest", "Artemis.N.-.v1.0.1.rbxm")
local project = rbxmSuite.launch(getRel)
protect(project)

return rbxmSuite.require(project["Main Core"])
--[[
FUNCTIONS:
LIBRARY:AddTheme(args: table) -- Add Themes
LIBRARY:SetTheme(theme_name: string) -- Sets the Theme

CURRENT OFFICIAL THEMES:
"EggShell", "EggShellInv"


]]
