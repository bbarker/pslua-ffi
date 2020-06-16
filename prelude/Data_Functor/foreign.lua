local arrayMap = function(f)
    return function(arr)
        local result = {}
        for _, a in pairs(arr) do
            table.insert(result, f(a))
        end
        return result
    end
end

return {
    arrayMap = arrayMap
}
