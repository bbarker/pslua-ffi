-- REVIEW
local topInt = math.maxinteger
local bottomInt = math.mininteger

local topChar = string.char(255)
local bottomChar = string.char(0)

local topNumber = 1 / 0 -- inf
local bottomNumber = -1 / 0 -- -inf

return {
    topInt = topInt,
    bottomInt = bottomInt,
    topChar = topChar,
    bottomChar = bottomChar,
    topNumber = topNumber,
    bottomNumber = bottomNumber
}
