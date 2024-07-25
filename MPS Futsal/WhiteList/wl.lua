return function(username)
    local whitelists = game:HttpGet("")
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
