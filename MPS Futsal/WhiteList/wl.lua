return function(username)
    local whitelists = game:HttpGet("https://your_github_repo_url/whitelists")
    local whitelistTable = {}

    for name in whitelists:gmatch("[^,\r\n]+") do
        name = name:match("^%s*(.-)%s*$")  -- Trim leading and trailing spaces
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
