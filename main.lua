_G.love = require("love")
local inputSystem = require("inputSystem")

function love.load()
    love.graphics.setBackgroundColor(1,1,1)
end

function love.update(dt)    
    
end

function love.draw()
    inputSystem.handleInput()
end

