Level = Object:extend()

function Level:new(brick_col, brick_row)
  self.brick_col = brick_col
  self.brick_row = brick_row
  self.bricks = {}
  self.walls = {}

  local start_pos = (love.graphics.getWidth() - (self.brick_col * 60) + (self.brick_col - 1 * 10)) / 2
  print(start_pos)

  for r = 1, self.brick_row do
    for c = 1, self.brick_col do
      self:add_brick(Brick((start_pos + (c * 10)) + ((c - 1) * 50), (100 + (r * 5)) + ((r - 1) * 20)))
    end
  end

  self:make_walls()
end

function Level:update(dt)
end

function Level:draw()
  for _, wall in ipairs(self.walls) do
    wall:draw()
  end

  for _, brick in ipairs(self.bricks) do
    brick:draw()
  end
end

function Level:add_brick(brick)
  table.insert(self.bricks, brick)
end

function Level:make_walls()
  local screen_w = love.graphics.getWidth()
  local screen_h = love.graphics.getHeight()

  local l_wall = Wall(6, 6, 6, screen_h - 6, 4)
  local r_wall = Wall(screen_w - 6, 6, screen_w - 6, screen_h - 6, 4)
  local t_wall = Wall(6, 6, screen_w - 6, 6, 4)
  local b_wall = Wall(6, screen_h - 6, screen_w - 6, screen_h - 6, 4)

  table.insert(self.walls, l_wall)
  table.insert(self.walls, r_wall)
  table.insert(self.walls, t_wall)
  table.insert(self.walls, b_wall)
end
