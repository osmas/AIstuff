--Breath first search in love2d lua

function love.load()
	local f = love.graphics.newFont("vera.ttf", 14)
	love.graphics.setFont(f)
	image1 = love.graphics.newImage("robot.png")

	world = {}
	world = {{f='a',t='b'}, {f='b',t='c'}, {f='c',t='d'}, {f='a',t='e'}}
	coords = {}
	coords = { a={x=100,y=200}, b={x=200,y=200}, c={x=300,y=200}, d={x=100,y=200}}

	route = {}

	initial = 'a'
	goal = 'c'
	addroute(initial)

	queue = {}
	table.insert(queue,initial)

	print('start at ', initial, " and end at ", goal)
end





function love.draw()
	local xx = coords[initial].x
	local yy = coords[initial].y

	-- Draws the position on screen
	love.graphics.draw(image1, xx, yy)
		love.graphics.print("The robot is at (" .. xx .. "," .. yy .. ")", 50, 50)
		dummy = io.read()  --pause


--search code
	headq = table.remove(queue,1) --get first item in queue

	if headq == goal then love.graphics.print("Got to goal", 50,500) end --once goal reached stop search!
	q = findworld(headq)
	addroute(headq)

	for i=1, #q do
	table.insert(queue,q[i]) -- add each elemnt to q into the real queue
    end

    print('Route=',unpack(route))
end



--helper function



function findworld(x) -- all occurrences of x in am x,y pair and returns y gfs
					  -- returning first unvisited y makes it depth first
y = {}
for i = 1, #world do -- #world is rawlen(world) in lua5.2
if world[i].f == x then table.insert(y,world[i].t) end
end
return y
end


function addroute(x) -- keeps track of the route taken in the table route
	table.insert(route,x)
end


--function findworld(x) -- all occurrences of x in am x,y pair and returns y gfs
					  -- returning first unvisited y makes it depth first
--y = "no route"
--for i = 1, #world do -- #world is rawlen(world) in lua5.2
--if world[i].f == x then y=world[i].t end
--end
--return y
--end




