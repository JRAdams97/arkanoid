Paddle = Object:extend()

function Paddle:new(x_pos, y_pos)
  self.w = 70
  self.h = 20
  self.x_pos = x_pos
  self.y_pos = y_pos
  self.x_spd = 300
end

function Paddle:update(dt)
  if love.keyboard.isDown("right") then
    self.x_pos = self.x_pos + (self.x_spd * dt)
  end

  if love.keyboard.isDown("left") then
    self.x_pos = self.x_pos - (self.x_spd * dt)
  end
end

function Paddle:draw()
  love.graphics.rectangle('fill', self.x_pos, self.y_pos, self.w, self.h)
end
