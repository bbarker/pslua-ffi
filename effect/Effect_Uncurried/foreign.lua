-- REVIEW: currying
local mkEffectFn1 = function(fn)
    return function(x)
        return fn(x)()
    end
end

local mkEffectFn2 = function(fn)
    return function(a, b)
        return fn(a)(b)()
    end
end

local mkEffectFn3 = function(fn)
    return function(a, b, c)
        return fn(a)(b)(c)()
    end
end

local mkEffectFn4 = function(fn)
    return function(a, b, c, d)
        return fn(a)(b)(c)(d)()
    end
end

local mkEffectFn5 = function(fn)
    return function(a, b, c, d, e)
        return fn(a)(b)(c)(d)(e)()
    end
end

local mkEffectFn6 = function(fn)
    return function(a, b, c, d, e, f)
        return fn(a)(b)(c)(d)(e)(f)()
    end
end

local mkEffectFn7 = function(fn)
    return function(a, b, c, d, e, f, g)
        return fn(a)(b)(c)(d)(e)(f)(g)()
    end
end

local mkEffectFn8 = function(fn)
    return function(a, b, c, d, e, f, g, h)
        return fn(a)(b)(c)(d)(e)(f)(g)(h)()
    end
end

local mkEffectFn9 = function(fn)
    return function(a, b, c, d, e, f, g, h, i)
        return fn(a)(b)(c)(d)(e)(f)(g)(h)(i)()
    end
end

local mkEffectFn10 = function(fn)
    return function(a, b, c, d, e, f, g, h, i, j)
        return fn(a)(b)(c)(d)(e)(f)(g)(h)(i)(j)()
    end
end

local runEffectFn1 = function(fn)
    return function(a)
        return function()
            return fn(a)
        end
    end
end

local runEffectFn2 = function(fn)
    return function(a)
        return function(b)
            return function()
                return fn(a, b)
            end
        end
    end
end

local runEffectFn3 = function(fn)
    return function(a)
        return function(b)
            return function(c)
                return function()
                    return fn(a, b, c)
                end
            end
        end
    end
end

local runEffectFn4 = function(fn)
    return function(a)
        return function(b)
            return function(c)
                return function(d)
                    return function()
                        return fn(a, b, c, d)
                    end
                end
            end
        end
    end
end

local runEffectFn5 = function(fn)
    return function(a)
        return function(b)
            return function(c)
                return function(d)
                    return function(e)
                        return function()
                            return fn(a, b, c, d, e)
                        end
                    end
                end
            end
        end
    end
end

local runEffectFn6 = function(fn)
    return function(a)
        return function(b)
            return function(c)
                return function(d)
                    return function(e)
                        return function(f)
                            return function()
                                return fn(a, b, c, d, e, f)
                            end
                        end
                    end
                end
            end
        end
    end
end

local runEffectFn7 = function(fn)
    return function(a)
        return function(b)
            return function(c)
                return function(d)
                    return function(e)
                        return function(f)
                            return function(g)
                                return function()
                                    return fn(a, b, c, d, e, f, g)
                                end
                            end
                        end
                    end
                end
            end
        end
    end
end

local runEffectFn8 = function(fn)
    return function(a)
        return function(b)
            return function(c)
                return function(d)
                    return function(e)
                        return function(f)
                            return function(g)
                                return function(h)
                                    return function()
                                        return fn(a, b, c, d, e, f, g, h)
                                    end
                                end
                            end
                        end
                    end
                end
            end
        end
    end
end

local runEffectFn9 = function(fn)
    return function(a)
        return function(b)
            return function(c)
                return function(d)
                    return function(e)
                        return function(f)
                            return function(g)
                                return function(h)
                                    return function(i)
                                        return function()
                                            return fn(a, b, c, d, e, f, g, h, i)
                                        end
                                    end
                                end
                            end
                        end
                    end
                end
            end
        end
    end
end

local runEffectFn10 = function(fn)
    return function(a)
        return function(b)
            return function(c)
                return function(d)
                    return function(e)
                        return function(f)
                            return function(g)
                                return function(h)
                                    return function(i)
                                        return function(j)
                                            return function()
                                                return fn(a, b, c, d, e, f, g, h, i, j)
                                            end
                                        end
                                    end
                                end
                            end
                        end
                    end
                end
            end
        end
    end
end

return {
    mkEffectFn1 = mkEffectFn1,
    mkEffectFn2 = mkEffectFn2,
    mkEffectFn3 = mkEffectFn3,
    mkEffectFn4 = mkEffectFn4,
    mkEffectFn5 = mkEffectFn5,
    mkEffectFn6 = mkEffectFn6,
    mkEffectFn7 = mkEffectFn7,
    mkEffectFn8 = mkEffectFn8,
    mkEffectFn9 = mkEffectFn9,
    mkEffectFn10 = mkEffectFn10,
    runEffectFn1 = runEffectFn1,
    runEffectFn2 = runEffectFn2,
    runEffectFn3 = runEffectFn3,
    runEffectFn4 = runEffectFn4,
    runEffectFn5 = runEffectFn5,
    runEffectFn6 = runEffectFn6,
    runEffectFn7 = runEffectFn7,
    runEffectFn8 = runEffectFn8,
    runEffectFn9 = runEffectFn9,
    runEffectFn10 = runEffectFn10
}
