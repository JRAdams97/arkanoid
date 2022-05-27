-- ====================================================================================================================
--  GLOBAL VARIABLES
-- ====================================================================================================================
Object = require 'lib.classic'

-- ====================================================================================================================
--  GAME LOOP
-- ====================================================================================================================
function love.load()
  requireObjs('obj', {})

  ball = Ball(300, 300)
  paddle = Paddle(300, 500)
  brick = Brick(100, 100)
end

function love.update(dt)
  ball:update(dt)
  paddle:update(dt)
end

function love.draw()
  ball:draw()
  paddle:draw()
  brick:draw()
end

function love.quit()
  print("Thanks for playing! Come back soon!")
end

-- ====================================================================================================================
--  UTILITY FUNCTIONS
-- ====================================================================================================================
function requireObjs(dir, obj_list)
  local objs = love.filesystem.getDirectoryItems(dir)

  for _, obj in ipairs(objs) do
    local file = dir .. '/' .. obj
    local info = love.filesystem.getInfo(file)

    if info.type == 'file' then
        table.insert(obj_list, file)
    elseif info.type == 'directory' then
        recursiveEnumerate(file, obj_list)
    end
  end

  for _, file in ipairs(obj_list) do
    local file = file:sub(1, -5)
    require(file)
  end
end
