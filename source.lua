-- Protection --
assert(type(sethiddenproperty) == "function", "sethiddenproperty not supported, please use another exploit.")
assert(type(syn) == "table", "syn library not supported, please use another exploit.")
assert(type(syn.protect_gui) == "function", "protect_gui not supported, please use another exploit.")

function protect(g)
  assert(typeof(g) == "Instance" and g:IsA("LuaSourceContainer"), "GUI expected")

  sethiddenproperty(g, "OnTopOfCoreBlur", true)
  syn.protect_gui(g)
end

-- Auto Upd --
local ver = tostring(loadstring(game:HttpGetAsync("https://raw.githubusercontent.com/AlpineTechnology/Artemis-N/main/ver"))())
local rbxm_name = "Artemis.N.-." .. ver .. ".rbxm"

-- Execution --
local rbxmSuite = loadstring(game:HttpGetAsync("https://raw.githubusercontent.com/richie0866/rbxm-suite/master/src/rbxm-suite.lua"))()
local getRel = rbxmSuite.download("AlpineTechnology/Artemis-N@latest", rbxm_name)
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
