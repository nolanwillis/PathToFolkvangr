-- Input system that uses a command-like pattern, where each command has an execute and undo function.

local buttonA = {
    execute = function()
        love.graphics.setBackgroundColor(0,1,0)
    end,
    undo = function()
        love.graphics.setBackgroundColor(1,1,1)
    end
}

module = { 
    handleInput = function()
        if (love.keyboard.isDown('a')) then
            buttonA.execute()
        elseif (not love.keyboard.isDown('a')) then
            buttonA.undo()
        end
    end
}
    
return module