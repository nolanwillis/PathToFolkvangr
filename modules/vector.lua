-- Simple 2D vector
local vector = {}

function vector:new(x, y)
    local newObj = { x = x or 0, y = y or 0 }
    self.__index = self
    return setmetatable(newObj, self)
end

function vector:add(rhs)
    return vector:new(self.x + rhs.x, self.y + rhs.y)
end

function vector:subtract(rhs)
    return vector:new(self.x - rhs.x, self.y - rhs.y)
end

function vector:dot(rhs)
    return (self.x * rhs.x) + (self.y * rhs.y)
end

function vector:length()
    return math.sqrt((self.x*self.x) + (self.y*self.y)) 
end

return vector



