local boolConj = function(b1)
  return function(b2)
    return b1 and b2
  end
end

local boolDisj = function(b1)
  return function(b2)
    return b1 or b2
  end
end

local boolNot = function(b)
  return not b
end

return {
  boolConj = boolConj,
  boolDisj = boolDisj,
  boolNot = boolNot
}
