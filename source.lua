-- Protection --
assert(type(sethiddenproperty) == "function", "sethiddenproperty not supported, please use another exploit.")
assert(type(syn) == "table", "syn library not supported, please use another exploit.")
assert(type(syn.protect_gui) == "function", "protect_gui not supported, please use another exploit.")

function protect(g)
  assert(typeof(g) == "Instance", "GUI expected")
  
  sethiddenproperty(g, "OnTopOfCoreBlur", true)
  syn.protect_gui(g)
end
-- Variables & Set-Up --
local rbxmSuite, ver = loadstring(game:HttpGetAsync("https://raw.githubusercontent.com/richie0866/rbxm-suite/master/src/rbxm-suite.lua"))(), 
tostring(loadstring(game:HttpGetAsync("https://raw.githubusercontent.com/AlpineTechnology/Artemis-N/main/ver.lua"))())

local getRel = rbxmSuite.download("AlpineTechnology/Artemis-N@latest", rbxm_name)
local project = rbxmSuite.launch(getRel)

if game:WaitForChild("CoreGui"):FindFirstChild(project.Name) then game.CoreGui[project.Name]:Destroy() end

-- Auto Upd --
local rbxm_name = "Artemis.N.-." .. ver .. ".rbxm"

-- Execution --
project.Parent = game.CoreGui
protect(project)


return rbxmSuite.require(project["Main Core"])
--[[
FUNCTIONS:
LIBRARY:AddTheme(args: table) -- Add Themes
LIBRARY:SetTheme(theme_name: string) -- Sets the Theme

CURRENT OFFICIAL THEMES:
"EggShell", "EggShellInv"
]]
