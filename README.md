# Path to Folkvangr
## About
### A side scroller where you fight as a viking to reclaim your honor and ascend to Freyja's eternal meadow, Folkvangr.
### Technology
* Lua
* LOVE2D 

### Motivation
When starting this project I had just completed my first semester as a graduate game programming student. This project was built to apply what I've learned from school and some of the design patterns discussed in Robert Nystrom's book Game Programming Patterns.
## Modules
### This section contains information about some of the custom lua modules I wrote for the project.
### Entities
This module contains all the entities that can be drawn in the game world.
#### Entity
```lua
-- Abstract entity base class for all entities, contains 3 methods: a constructor, update, and draw. Update and draw are called from LOVE2D's main update and draw methods. 
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
```
#### Player
```lua
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
```


