local unsafeHas = function(label)
    return function(rec)
        return rec[label] ~= nil
    end
end

local unsafeGet = function(label)
    return function(rec)
        return rec[label]
    end
end

local unsafeSet = function(label)
    return function(value)
        return function(rec)
            -- is there a better way to copy object table?
            local result = {}
            for k, v in pairs(rec) do
                result[k] = v
            end
            result[label] = value
            return result
        end
    end
end

local unsafeDelete = function(label)
    return function(rec)
        local result = {}
        for k, v in pairs(rec) do
            if k ~= label then
                result[k] = v
            end
        end
        return result
    end
end

return {
    unsafeHas = unsafeHas,
    unsafeGet = unsafeGet,
    unsafeSet = unsafeSet,
    unsafeDelete = unsafeDelete
}
