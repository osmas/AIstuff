--linear planner: in Love2D, depth first search
-- set up font, robot image, world rooms a to d, coordinates of rooms a to d in coords
-- start point in initial, target point in goal and path taken in route

function love.load()
	local f = love.graphics.newFont("Vera.ttf", 14)
	love.graphics.setFont(f)
	image1 = love.graphics.newImage("robot.png")

world = {}
world = {{f='a', t='b'}, {f='b',t='c'},{f='c',t='d'}}
coords = {}
coords = { a={x=100,y=200}, b={x=200,y=200}, c={x=300,y=200}, d={x=100,y=200}}

	route = {}

	initial = 'a'
	x_location = initial
	goal = 'c'
	addroute(initial)

	queue = {}
	table.insert(queue,initial)

	print('start at ', initial, " and end at ", goal)
end




function love.draw()
	--get starting point coordinates of initial
	local xx = coords[initial].x
	local yy = coords[initial].y

--Draws the position on screen
    love.graphics.draw(image1, xx, yy)
	love.graphics.print("The robot is at (" .. xx .. "," .. yy .. ")", 0, 50)
		
		dummy = io.read()  --pause so we see robot move(Enter)

		--planner code
	if initial == goal then return end --once goal reached stop planner

	--repeat
	new_x_location = go(initial,goal)
	addroute(new_x_location)
	print("next location (hit Enter) =", new_x_location);
	x_location = new_x_location
	--until x_location == goal
	print('Route=', unpack(route))

end




----------------------------------------planner functions

function at(x) --ability to check current location
	if x_location == x then out = true else out=false end
	return out
end

function go(x,y) --operator to go from room x to room y
	ty=findworld(x)
	if at(x) == true then x_location = ty else x_location = 999 end
	return ty
end

function findworld(x) -- finds first occurence of x in an x,y pair and return y i.e depth first
	y = "no route"
	for i = 1, #world do
		if world[i].f == x then y=world[i].t end
	end
	return y
end


function addroute(x)
	table.insert(route,x)

end

-----------------------------------------------------------------------------------------------

