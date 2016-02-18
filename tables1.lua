t = {10,"hello", 3}  --tables
print(unpack(t)) -- shows 10 hello 3
print(t[1])
print(t[2])
print(t[3])

table.insert(t,2,"boing")
print(unpack(t))
table.remove(t,2)
print(unpack(t))


t2 = {"z", "y", "b", "a"} --tables and sorting
print(unpack(t2))
table.sort(t2)
print(unpack(t2))

d = {yes="oui", no="non"} --tables as dictionaries
print(d["yes"])
print(d["no"])
d[3] = "a phrase"
print(d[3])
