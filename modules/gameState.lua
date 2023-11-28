local gameState = {}

function gameState:new() {
    local newObj {
        drawBuffer = {},
        displayBuffer = {}
        player = {}
    }
    self.__index = self
    return setmetatable(newObj, self)
}

function 

return gameState