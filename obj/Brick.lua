Brick = Object:extend()

function Brick:new(x_pos, y_pos)
  self.w = 50
  self.h = 30
  self.x_pos = x_pos
  self.y_pos = y_pos
end

function Brick:update(dt)
end

function Brick:draw()
  love.graphics.rectangle('fill', self.x_pos, self.y_pos, self.w, self.h)
end
