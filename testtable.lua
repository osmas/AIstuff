function findpathBFS(location_x)

myqueue = {}

for i=1,#a do

if a[i]["f"] == location_x then  table.insert(myqueue,a[i].t)   print(a[i].t) end

end
return myqueue
end


function addroute(x) --keeps track of the route taken in the table route
	table.insert(route,x)
end



a = {}     -- empty table
 a = { {f='a',t='b'}, {f='b',t='c'}, {f='c',t='d'}, {f='a',t='e'} }




--myarray = findpathBFS("a")
	  -- print the lines
    -- Accessing the array

route = {}
myarray = {}
queue ={}
--for key,value in pairs(myarray) do print(key,value) end

headq = "a"
goal = "c"

repeat

	print("The robot is currrently at ", headq)
	if headq == goal then print("Got to goal") end -- once goal reached stop search
	myarray = findpathBFS(headq)

	--[[for i=1, #myarray do print(myarray[i]) end
	if next(myarray) == nil then
   print("Table is empty")
    end --]]


 dummy = io.read()
	addroute(headq)

	for i=1,#myarray do
	table.insert(queue,myarray[i]) --add each element of q int real queue
	end


	headq = queue[1]

	print("head is",headq)
until headq == goal

print('Route= ',unpack(route))
