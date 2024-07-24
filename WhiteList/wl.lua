return function(username)
    local whitelists = game:HttpGet("https://your_github_repo_url/whitelists")
    local whitelistTable = {}

    for name in whitelists:gmatch("[^,]+") do
        table.insert(whitelistTable, name)
    end

    for _, name in ipairs(whitelistTable) do
        if name == username then
            return true
        end
    end

    return false
end
