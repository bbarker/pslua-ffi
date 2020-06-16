local log = function(s)
    return function()
        print(s)
        return nil
    end
end

local warn = function(s)
    return function()
        error("warn is not supported.")
        return nil
    end
end

local error = function(s)
    return function()
        error(s)
        return nil
    end
end

local info = function(s)
    return function()
        error("info is not supported.")
        return nil
    end
end

local time = function(s)
    return function()
        error("time is not supported.")
        return nil
    end
end

local timeLog = function(s)
    return function()
        error("timeLog is not supported.")
        return nil
    end
end

local timeEnd = function(s)
    return function()
        error("timeEnd is not supported.")
        return nil
    end
end

local clear = function()
    os.execute("clear")
    return nil
end

return {
    log = log,
    warn = warn,
    error = error,
    info = info,
    time = time,
    timeLog = timeLog,
    timeEnd = timeEnd,
    clear = clear
}
