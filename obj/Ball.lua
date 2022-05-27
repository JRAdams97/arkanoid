Ball = Object:extend()

function Ball:new(x_pos, y_pos)
  self.x_pos = x_pos
  self.y_pos = y_pos
  self.x_spd = 300
  self.y_spd = 300
  self.radius = 10
end

function Ball:update(dt)
  self.x_pos = self.x_pos + self.x_spd * dt
  self.y_pos = self.y_pos + self.y_spd * dt
end

function Ball:draw()
  love.graphics.circle('fill', self.x_pos, self.y_pos, self.radius, self.radius * 2)
end
