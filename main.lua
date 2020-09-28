function love.load()
    x = 10
    y = 100
    speed = 100
    char = love.graphics.newImage('imgs/char.png')
    bg = love.graphics.newImage('imgs/bg.png') 
    time = 0.0
    bgx = 0.0
end

function love.update(dt)
    time = time + dt
    bgx = (math.sin(time*.5) * 50 ) - 50

    in_x = 0.0
    if love.keyboard.isDown('a') then
        in_x = -1.0
    end
    if love.keyboard.isDown('d') then
        in_x = 1.0
    end
    x = x + (in_x * speed * dt)
end

function love.draw()
    love.graphics.draw(bg,bgx,0)
    love.graphics.print("Little Seizures", 0, 10)
    love.graphics.draw(char,x,y)
end