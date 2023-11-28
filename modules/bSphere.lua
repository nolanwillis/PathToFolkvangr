local vector = require("vector")

local bSphere = {}

function bSphere:new(C, r)
    local newObj = { C = C or vector:new{0,0}, r = r or 0 }
    self.__index = self
    return setmetatable(newObj, self)
end

function bSphere:isColliding(Rhs)
    local diff = Rhs.C:subtract(self.C)
    return  diff:length() < Rhs.r
end

return bSphere