local function isWhitelisted(username)
    local whitelists = loadstring(game:HttpGet("https://raw.githubusercontent.com/wrestonbest/Luminary-Hub/main/MPS%20Futsal/WhiteList/whitelists"))()
    local whitelistTable = {}

    for name in whitelists:gmatch("[^,]+") do
        name = name:match("^%s*(.-)%s*$")
        if #name > 0 then
            table.insert(whitelistTable, name)
        end
    end

    for _, name in ipairs(whitelistTable) do
        if name == username then
            return true
        end
    end

    return false
end

return isWhitelisted
