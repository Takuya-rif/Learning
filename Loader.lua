local base = "https://raw.githubusercontent.com/Takuya-rif/Learning/main/"

local files = {
    "grndblue%20v2.7.txt"
}

for _, file in ipairs(files) do
    local url = base .. file

    local success, result = pcall(function()
        return loadstring(game:HttpGet(url))()
    end)

    if not success then
        warn("Failed to load: " .. file)
        warn(result)
    end
end
