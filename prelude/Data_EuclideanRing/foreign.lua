local intDegree = function(x)
    return math.min(math.abs(x), math.maxinteger)
end

-- See the Euclidean definition in
-- https://en.m.wikipedia.org/wiki/Modulo_operation.
local intDiv = function(x)
    return function(y)
        if y == 0 then
            return 0
        elseif y > 0 then
            return math.floor(x / y)
        else
            return -math.floor(x / -y)
        end
    end
end

local intMod = function(x)
    return function(y)
        if y == 0 then
            return 0
        else
            local yy = math.abs(y)
            return ((x % yy) + yy) % yy
        end
    end
end

local numDiv = function(n1)
    return function(n2)
        return n1 / n2
    end
end

return {
    intDegree = intDegree,
    intDiv = intDiv,
    intMod = intMod,
    numDiv = numDiv
}
