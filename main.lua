function love.load()
    x = 100 
    speed = 50
end

function love.update(dt)
    x = (x + (speed * dt))
end

function love.draw()
    love.graphics.print("Little Seizures", 400, 300)
    love.graphics.rectangle("line", x, 50, 200, 150)

end