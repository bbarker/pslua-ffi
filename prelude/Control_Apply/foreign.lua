local arrayApply = function(fs)
    return function(xs)
        local result = {}
        for _, f in pairs(fs) do
            for _, x in pairs(xs) do
                table.insert(result, f(x))
            end
        end
        return result
    end
end

return {
    arrayApply = arrayApply
}
