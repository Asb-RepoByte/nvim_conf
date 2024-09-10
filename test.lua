local function print_table(tbl, indent)
    indent = indent or 0
    local indentation = string.rep("  ", indent)

    for key, value in pairs(tbl) do
        if type(value) == "table" then
            print(indentation .. tostring(key) .. ":")
            print_table(value, indent + 1)
        else
            print(indentation .. tostring(key) .. ": " .. tostring(value))
        end
    end
end

local mytest = {name = "sidi", age = 12}
local result = {
    settings = {
        color = "blue",
    },
    opts = "nothing",
}

local final = vim.tbl_deep_extend("force", mytest, result)
print_table(final)
