
function love.load()
whale = love.graphics.newImage("whale.png")
 
 love.graphics.setBackgroundColor(255,255,255)
end

function love.update(dt)
   if love.keyboard.isDown("up") then
      num = num + 100 * dt -- this would increment num by 100 per second
   end
end

function love.draw()
love.graphics.draw(whale, 300, 200)
end