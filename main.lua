_G.love = require("love")
package.path = package.path .. ";modules/?.lua"
local inputSystem = require("inputSystem")

function love.load()
    love.graphics.setBackgroundColor(0,0,0,1)
end

local x = 200
local y = 200

function love.update(dt)    
    --inputSystem:handleInput()
    if (love.keyboard.isDown("a")) then
        x = x - 10
    elseif (love.keyboard.isDown("d")) then
        x = x + 10
    elseif (love.keyboard.isDown("w")) then
        y = y - 10
    elseif (love.keyboard.isDown("s")) then
        y = y + 10
    end 
end

function love.draw()
    love.graphics.rectangle("fill", x, y, 50, 50)
end

