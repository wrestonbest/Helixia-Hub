return function(username)
    local whitelists = game:HttpGet("https://raw.githubusercontent.com/wrestonbest/Luminary-Hub/main/MPS%20Futsal/WhiteList/whitelists")
    local whitelistTable = {}

    -- Debugging output
    print("Whitelists file content: " .. whitelists)

    for name in whitelists:gmatch("[^,]+") do
        name = name:match("^%s*(.-)%s*$")  -- Başındaki ve sonundaki boşlukları temizle
        if #name > 0 then
            table.insert(whitelistTable, name)
        end
    end

    -- Debugging output
    print("Whitelist table: " .. table.concat(whitelistTable, ", "))

    for _, name in ipairs(whitelistTable) do
        if name == username then
            return true
        end
    end

    return false
end
