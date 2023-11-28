local gameState = {}

function gameState:new() {
    local newObj {
        entities = {}
    }
    self.__index = self
    return setmetatable(newObj, self)
}

function 

return gameState