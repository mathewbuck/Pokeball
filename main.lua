

function love.load()
	print("Use the right or left arrow keys to make the pokeball move")
	pokeball = love.graphics.newImage("pokeball.png")
	alpha = 0
end

function love.draw()
	love.graphics.clear(0.0,0.0,0.0)
	love.graphics.draw(pokeball, 300,300, alpha, 1, 1, 200, 200)
end

function love.update(dt)
	if love.keyboard.isDown("left") then
		alpha = alpha -dt
elseif love.keyboard.isDown("right") then
		alpha = alpha +dt
	end
end
