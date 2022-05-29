Wall = Object:extend()

function Wall:new(start_pos_x, start_pos_y, end_pos_x, end_pos_y, width)
  self.start_pos = { start_pos_x , start_pos_y }
  self.end_pos = { end_pos_x, end_pos_y }
  self.w = width
end

function Wall:update(dt)
end

function Wall:draw()
  love.graphics.setLineWidth(self.w)
  love.graphics.line(self.start_pos[1], self.start_pos[2], self.end_pos[1], self.end_pos[2])
end
