local unsafePerformEffect = function(f)
    return f()
end

return {
    unsafePerformEffect = unsafePerformEffect
}
