local intSub = function(x)
    return function(y)
        return x - y
    end
end

local numSub = function(n1)
    return function(n2)
        return n1 - n2
    end
end

return {
    intSub = intSub,
    numSub = numSub
}
