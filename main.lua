-- This line is used to show logs in console during execution process
io.stdout:setvbuf('no')

require 'spaceship'

function love.load()
  
  windowWidth = love.graphics.getWidth()
  windowHeight = love.graphics.getHeight()
  
  spaceship.positionX = windowWidth / 2
  spaceship.positionY = windowHeight / 2
  spaceship.angle = -90
  
end


function love.update(dt)
end


function love.draw()
  
  -- Warning: To apply an angle in degrees you must use math.rad(), by default lua use radian to calculate the angle
  love.graphics.draw(spaceship.image, spaceship.positionX, spaceship.positionY, math.rad(spaceship.angle), 1, 1, spaceship.width / 2, spaceship.height / 2)
  
end
