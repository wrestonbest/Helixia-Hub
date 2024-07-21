local whitelist = {
    "wrestonmain", -- owner
    "Ben_Muhammed17", -- admin
    "xzk_7402", --lifetime
    "Wreston_Jr",
    "nephis001", --lifetime
    "dronareva", --lifetime
    "eitch9nine", --lifetime giveaway
    "MyDogJaxIsCute", --lifetime
    "Eldekatrecent4", --lifetime
    "CheioDescript", --1 month 8 Ağustos
    "Vieranity", --lifetime
    "Raffandraputra699", -- 18 agustos
    "soy_romi32", --lifetime
    "riaownsme", --lifetime
    "SKLENICKAAAAA", -- lifetime
    "Isaquez125", --lifetime
    "nicobagre", --lifetime
    "tiasaray1", --1 month 13 Ağustos
    "slogso",--lifetime
    "staurosxd23", -- lifetime
    "gabox_29", -- lifetime
    "nofallaris",--lifetime
    "4xlisst",--lifetime
    "IUseArchLinuxx", --lifetime
    "GianluigiBuffon884", --lifetime
    "Baconrich234", --lifetime
    "baconnotnoob3421", --lifetime
    "Legend_dary124", --1 month 20 agustos
    "Mierha_xDD", -- lifetime giveaway 
    "kaan113azkral",--1 month 21 agustos
}

local function trim(s)
    return (s:gsub("^%s*(.-)%s*$", "%1"))
end

local function isPlayerWhitelisted(playerName)
    local trimmedPlayerName = trim(playerName:lower())
    
    for _, name in ipairs(whitelist) do
        local trimmedWhitelistName = trim(name:lower())
        
        if trimmedWhitelistName == trimmedPlayerName then
            return true
        end
    end
    
    print("Player is not whitelisted") 
    return false
end

return {
    isPlayerWhitelisted = isPlayerWhitelisted
}
