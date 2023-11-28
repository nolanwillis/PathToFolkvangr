package.path = package.path .. ";modules/?.lua"
local vector = require("vector")

local entities = {}

-- Abstract entity base class for all entities, contains 3 methods: a constructor, update, and draw. 
-- Update and draw are called from LOVE2D's main update and draw methods. 
local entity = {}
entity.__index = entity 
function entity:new()
    error("The function 'new' must be overridden in a subclass.")
end 
function entity:update()
    error("The function 'update' must be overridden in a subclass.")
end 
function entity:draw()
    error("The function 'draw' must be overridden in a subclass.")
end

-- Player entity
local Player = setmetatable({}, entity)
function Player:new(x,y)
    local newObj = {position = vector:new(x, y)}
    self.__index = self
    return setmetatable(newObj, self)
end
function Player:update()
    print("Move player")
    if (love.keyboard.isDown("a")) then
        self.position.x = self.position.x - 10
    elseif (love.keyboard.isDown("d")) then
        self.position.x = self.position.x + 10
    elseif (love.keyboard.isDown("w")) then
        self.position.y = self.position.y - 10
    elseif (love.keyboard.isDown("s")) then
        self.position.y = self.position.y + 10
    end 
end 
function Player:draw()
    love.graphics.rectangle("fill", self.position.x, self.position.y, 100, 100)
end 

-- Add all classes to entities module
entities.entity = entity
entities.Player = Player

return entities