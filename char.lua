Character = Object:extend()

function Character:new()
    self.sprite = love.graphics.newImage('imgs/char.png')
    self.width = self.sprite:getWidth()
    self.height = self.sprite:getHeight()
    self.x = 0.0
    self.y = 200.0
    self.facing = 1.0
    self.speed = 150.0
    self.is_shaking = false
    self.shake_x = 0.0
    self.shake_y = 0.0
    self.shake_size = 10.0
end

function Character:update(dt)
    local in_x = 0.0
    if love.keyboard.isDown('a') then
        self.facing = -1.0
        in_x = -1.0
    end
    if love.keyboard.isDown('d') then
        self.facing = 1.0
        in_x = 1.0
    end

    if love.keyboard.isDown('q') then
        self.is_shaking = true
    else
        self.is_shaking = false
    end

    self.x = self.x + (in_x * self.speed * dt)

    if self.is_shaking then
        self.shake_x = love.math.random(-self.shake_size,self.shake_size)
        self.shake_y = love.math.random(-self.shake_size,self.shake_size)
    else
        self.shake_x = 0.0
        self.shake_y = 0.0
    end
end

function Character:draw()
    love.graphics.draw(self.sprite,self.x+self.shake_x,self.y+self.shake_y,0.0,self.facing,1.0,self.width/2.0,self.height/2.0)
end

