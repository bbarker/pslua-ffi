local showIntImpl = function(i)
    return tostring(i)
end

local showNumberImpl = function(n)
    return tostring(n)
end

local showCharImpl = function(c)
    return "'" .. c .. "'"
end

local showStringImpl = function(s)
    return '"' .. s .. '"'
end

local showArrayImpl = function(f)
    return function(xs)
        local result = {}
        for _, x in pairs(xs) do
            table.insert(result, f(x))
        end
        return "[" .. table.concat(result, ",") .. "]"
    end
end

local cons = function(head)
    return function(tail)
        local result = {table.unpack(tail)} -- deep copy
        table.insert(result, 1, head)
        return result
    end
end

local join = function(separator)
    return function(xs)
        return table.concat(xs, separator)
    end
end

return {
    showIntImpl = showIntImpl,
    showNumberImpl = showNumberImpl,
    showCharImpl = showCharImpl,
    showStringImpl = showStringImpl,
    showArrayImpl = showArrayImpl,
    cons = cons,
    join = join
}
