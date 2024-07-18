local whitelist = {
    "topraqk1",
    "wrestonmain",
    "slmknknbriiben",
    "Ben_Muhammed17",
    "muhammet3925", --1 day
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
