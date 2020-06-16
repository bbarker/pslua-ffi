local pureE = function(a)
    return function()
        return a
    end
end

local bindE = function(a)
    return function(f)
        return function()
            return f(a())()
        end
    end
end

local untilE = function(f)
    return function()
        while not f() do
        end
        return nil
    end
end

local whileE = function(f)
    return function(a)
        return function()
            while f() do
                a()
            end
            return nil
        end
    end
end

local forE = function(lo)
    return function(hi)
        return function(f)
            return function()
                for i = lo, hi - 1 do
                    f(i)()
                end
                return nil
            end
        end
    end
end

local foreachE = function(as)
    return function(f)
        return function()
            for _, a in pairs(as) do
                f(a)()
            end
            return nil
        end
    end
end

return {
    pureE = pureE,
    bindE = bindE,
    untilE = untilE,
    whileE = whileE,
    forE = forE,
    foreachE = foreachE
}
