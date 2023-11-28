_G.love = require("love")
package.path = package.path .. ";modules/?.lua"
local inputSystem = require("inputSystem")
local entities = require("entities")
local vector = require("vector")

local player = entities.Player:new(100,100)

function love.load()
    love.graphics.setBackgroundColor(0,0,0,1)
end

function love.update(dt)    
    player:update(dt)    
end

function love.draw()
    player:draw()    
end

-- print snippet 
-- love.graphics.setColor(1, 1, 1)
-- love.graphics.setNewFont(20)
-- love.graphics.print(type(self.pos.x), 100, 100)