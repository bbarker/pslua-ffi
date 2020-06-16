local intAdd = function(x)
    return function(y)
        return x + y
    end
end

local intMul = function(x)
    return function(y)
        return x * y
    end
end

local numAdd = function(n1)
    return function(n2)
        return n1 + n2
    end
end

local numMul = function(n1)
    return function(n2)
        return n1 * n2
    end
end

return {
    intAdd = intAdd,
    intMul = intMul,
    numAdd = numAdd,
    numMul = numMul
}
