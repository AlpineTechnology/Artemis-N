<h1 align="center">
<a href="https://github.com/AlpineTechnology" rel="noopener" target="_blank"><img width="150" src="https://user-images.githubusercontent.com/89491373/205462790-16e3972d-060a-4f6d-86bc-9170cdb7d0a1.png" alt="Artemis Logo"></a>

<p>Artemis N</p>
</h1>
<p align="center">A Sleek, Modern, Simple, And Fast Notification Library For Your Game</p>
<h1>Documentation:</h2>
<h2>Booting the Library (Executor):</h2>

```lua
local Artemis = loadstring(game:HttpGetAsync('https://raw.githubusercontent.com/AlpineTechnology/Artemis-N/main/source.lua'))()
```

<h3>Setting Up Safe (Secure) Mode (For Executors)</h3>

Safe (Secure) Mode is a mode that makes `Artemis` way less detectable, this prevents the game's Anti-Cheat from banning/kicking you because our Notification Library exists in your client. To turn this on you must have this code above the loadstring:

`getgenv().AN_SAFEMODE = true;`

You do not have to make the variable false if you don't want to use Safe Mode.

<h2>Setting UI Theme</h2>

```lua
Artemis:SetTheme(ThemeName: <string>)

--[[
  Example:
  Artemis:SetTheme("Violet")
  
  DEFAULT THEMES:
  Soon...
]]
```

<h2>Adding a new custom UI Theme</h2>

```lua
Artemis:AddTheme(Args: <table>)

--[[
  Example since this is a bit confusing for "beginners":
  
  Artemis:AddTheme({THEME_NAME = {
      Design = Color3.fromRGB(0,0,0),
      Name = Color3.fromRGB(0,0,0),
      Icon = Color3.fromRGB(0,0,0), 
      EShadow = Color3.fromRGB(0,0,0),
      Content = Color3.fromRGB(0,0,0),
      Time = Color3.fromRGB(0,0,0),
    }
  })
]]
```

<h2>Sending A Notification</h2>

```lua
Artemis:Send(Args: <table>)

--[[
Example:

Artemis:Send({Name = "Hello!", Description = "Hello World!", Icon = "http://www.roblox.com/asset/?id=11666569347", Time = 10})
]]
```
