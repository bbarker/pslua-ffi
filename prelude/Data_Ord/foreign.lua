local unsafeCompareImpl = function(lt)
    return function(eq)
        return function(gt)
            return function(x)
                return function(y)
                    if x < y then
                        return lt
                    elseif x == y then
                        return eq
                    else
                        return gt
                    end
                end
            end
        end
    end
end

local ordIntImpl = unsafeCompareImpl
local ordNumberImpl = unsafeCompareImpl
local ordStringImpl = unsafeCompareImpl
local ordCharImpl = unsafeCompareImpl

local ordBooleanImpl = function(lt)
    return function(eq)
        return function(gt)
            return function(x)
                return function(y)
                    if x == y then
                        return eq
                    elseif x then
                        return gt
                    else
                        return lt
                    end
                end
            end
        end
    end
end

-- TODO: separate boolean issue?
local ordArrayImpl = function(f)
    return function(xs)
        return function(ys)
            return {}
        end
    end
end

return {
    ordBooleanImpl = ordBooleanImpl,
    ordIntImpl = ordIntImpl,
    ordNumberImpl = ordNumberImpl,
    ordStringImpl = ordStringImpl,
    ordCharImpl = ordCharImpl,
    ordArrayImpl = ordArrayImpl
}
