local concatString = function(s1)
    return function(s2)
        return s1 .. s2
    end
end

local concatArray = function(xs)
    return function(ys)
        -- is there a better way to merge table?
        local result = {table.unpack(xs)} -- deep copy
        for _, y in pairs(ys) do
            table.insert(result, y)
        end
        return result
    end
end

return {
    concatString = concatString,
    concatArray = concatArray
}
