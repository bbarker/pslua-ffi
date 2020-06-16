local refEq = function(r1)
    return function(r2)
        return r1 == r2
    end
end

local eqBooleanImpl = refEq
local eqIntImpl = refEq
local eqNumberImpl = refEq
local eqCharImpl = refEq
local eqStringImpl = refEq

local eqArrayImpl = function(f)
    return function(xs)
        return function(ys)
            if #xs ~= #ys then
                return false
            end
            for i = 1, #xs do
                if not f(xs[i])(ys[i]) then
                    return false
                end
            end
            return true
        end
    end
end

return {
    eqBooleanImpl = eqBooleanImpl,
    eqIntImpl = eqIntImpl,
    eqNumberImpl = eqNumberImpl,
    eqCharImpl = eqCharImpl,
    eqStringImpl = eqStringImpl,
    eqArrayImpl = eqArrayImpl
}
