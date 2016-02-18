route = {}

initial = 'a'
x_location = initial
goal = 'c'

--addroute(initial)

queue = {}
table.insert(queue,initial)

print("The robot is at ", initial)

print('start at', initial, " and end at", goal)










j=1
headq = queue[j] -- get first item in queue
repeat

	print("The robot is currrently at ", headq)
	if headq == goal then print("Got to goal") end -- once goal reached stop search
	q = findworldBFS(headq)
	print(q)
	for i=1, #q do print(q[i]) end
	if next(q) == nil then
   print("Table is empty")
    end


 dummy = io.read()
	addroute(headq)

	for i=1,#q do
	table.insert(queue,q[i]) --add each elemntof q int real queue
	end


	headq = queue[1]

	print("head is",headq)
until headq == goal

print('Route= ',unpack(route))






-helper functions
--there are 2 similioary nemed functions findworld(x) the first BFS and second DFS
--try both by commenting one ofd them out

function findworldBFS(x) --finds all occurrence of x in BFS and returns y
	y={}
	for i=1, #world do
	if world[i].f == x then table.insert(y,world[i].t) end  --adds all occurences to table y
	end
	return y
end



function findworldDFS(x) --finds first occurrence of x in BFS and returns y
	y={}
	for i=1, #world do
	if world[i].f == x then table.insert(y,world[i].t)  return y end  --stops at first occurrence
	end
	return y
end


function addroute(x) --keeps track of the route taken in the table route
	table.insert(route,x)
end

-- end of helper functions





