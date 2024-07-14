local whitelist = {
    "topraqk1"
}

local function whitelisted(playerName)
    for _, name in ipairs(whitelist) do
        if name == playerName then
            return true
        end
    end
    return false
end

return whitelisted
