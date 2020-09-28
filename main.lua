function love.load()
    Object = require("classic")
    require("char")
    character = Character()
    love.graphics.setBackgroundColor(1, 1, 1)
end

function love.update(dt)
    character:update(dt)
end

function love.draw()
    love.graphics.print("Little Seizures", 0, 10)
    character:draw()
end