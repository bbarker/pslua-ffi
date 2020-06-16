local arrayBind = function(arr)
    return function(f)
        local result = {}
        for _, a in pairs(arr) do
            -- is there a better way to merge table?
            for _, x in pairs(f(a)) do
                table.insert(result, x)
            end
        end
        return result
    end
end

return {
    arrayBind = arrayBind
}
