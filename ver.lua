-- credits to RBXM-Suite for the idea...
local httpService = game:GetService("HttpService")

local function httpGet(url)
	local response, code = game:HttpGetAsync(url)

	return assert(response, "Error " .. tostring(code) .. ": Failed to GET from " .. url)
end

local function fetch()
    local resp = httpGet("https://api.github.com/repos/AlpineTechnology/Artemis-N/releases/latest")

    return httpService:JSONDecode(resp).tag_name
end

return fetch()
