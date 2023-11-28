package.path = package.path .. ";modules/inputSystem.lua"

_G.love = require("love")
local inputSystem = require("inputSystem")

function love.load()
    love.graphics.setBackgroundColor(1,1,1)
end

function love.update(dt)    
    inputSystem.handleInput()
end

function love.draw()
    
end

