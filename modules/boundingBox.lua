-- Bounding box primitive for collision detection
package.path = package.path .. ";../modules/?.lua"
local vector = require("vector")

local boundingBox = {}

function boundingBox:new(min, max)
    local newObj = {min = min or vector:new(0,0), max = max or vector:new(0,0)}
    self.__index = self
    return setmetatable(newObj, self)
end

function boundingBox:isColliding(Rhs)
    -- Interval test for the max and min points of self against Rhs
    if (
        ((Rhs.min.x <= self.min.x) and (self.min.x <= Rhs.max.x) and (Rhs.min.y <= self.min.y) and (self.min.y <= Rhs.max.y)) 
        or 
        ((Rhs.min.x <= self.max.x) and (self.max.x <= Rhs.max.x) and (Rhs.min.y <= self.max.y) and (self.max.y <= Rhs.max.x))
    ) then
        return true
    else
        return false 
    end
end

return boundingBox