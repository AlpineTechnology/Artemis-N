-- getgenv().AN_SAFEMODE is safemode var
local src, gui

local rbxmSuite = loadstring(game:HttpGetAsync("https://raw.githubusercontent.com/richie0866/rbxm-suite/master/src/rbxm-suite.lua"))()
local ver = tostring(loadstring(game:HttpGetAsync("https://raw.githubusercontent.com/AlpineTechnology/Artemis-N/main/ver.lua"))())

local rbxm_name = "Artemis.N.-." .. ver .. ".rbxm"
local getRel = rbxmSuite.download("AlpineTechnology/Artemis-N@latest", rbxm_name)
local project = rbxmSuite.launch(getRel)

-- Identification --
-- this is to prevent massive usage of Artemis upon execution (Artemis may use more memory or idk in future upds so why not) :)

for i,v in pairs(game:GetService("CoreGui"):GetChildren()) do
    if v.Name == "Artemis N" or v:FindFirstChild("identifier") then
        v:Destroy()
    end
end

src, gui = rbxmSuite.require(project["Main Core"]), project

-- Protection --
if getgenv().AN_SAFEMODE then
    assert(type(sethiddenproperty) == "function", "sethiddenproperty not supported, please use another exploit.")
    assert(type(syn) == "table", "syn library not supported, please use another exploit.")
    assert(type(syn.protect_gui) == "function", "protect_gui not supported, please use another exploit.")

    function protect(g)
        assert(typeof(g) == "Instance", "GUI expected")
        
        sethiddenproperty(g, "OnTopOfCoreBlur", true)
        syn.protect_gui(g)
    end

    function generate_serial()
        local holder = {}
        local min_max = math.random(5,35)
        for str = 1, min_max do
            holder[str] = string.char(math.random(35,130))
        end
        return table.concat(holder)
    end

    -- Execution --
    gui.Parent = game.CoreGui
    gui.Name = generate_serial()
    protect(gui)

else
    gui.Parent = game.CoreGui
end

return src
