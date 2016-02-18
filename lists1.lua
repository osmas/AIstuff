l = nil
l = {next = l, value = 1}--creates a list 1 2 3
l = {next = l, value = 2}
l = {next = l, value = 3}
print(l.value) -- shows the value of the elements

ll=l
print(ll.value)
ll=ll.next
print(ll.value)
ll=ll.next
print(ll.value)


