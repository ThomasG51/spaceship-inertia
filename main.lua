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
  -- Gravity
  spaceship.velocityY = spaceship.velocityY + (0.6 * dt)
  
  -- Spaceship Movement
  spaceship.positionX = spaceship.positionX + spaceship.velocityX
  spaceship.positionY = spaceship.positionY + spaceship.velocityY
  
  -- Spaceship deplacement
  if love.keyboard.isDown('up') then
    -- spaceship.velocityY = spaceship.velocityY + 
  end
  
  if love.keyboard.isDown('right') then
    spaceship.angle = spaceship.angle + (90 * dt) -- The spaceship will rotate of 90° per seconde
  end
  
  if love.keyboard.isDown('left') then
    spaceship.angle = spaceship.angle - (90 * dt)
  end

end


function love.draw()
  
  -- Warning: To apply an angle in degrees you must use math.rad(), by default lua use radian to calculate the angle
  love.graphics.draw(spaceship.image, spaceship.positionX, spaceship.positionY, 
    math.rad(spaceship.angle), 1, 1, spaceship.width / 2, spaceship.height / 2)
  
  love.graphics.draw(spaceship.engineImage, spaceship.positionX, spaceship.positionY, 
    math.rad(spaceship.angle), 1, 1, spaceship.engineWidth / 2, spaceship.engineHeight / 2)
  
end
