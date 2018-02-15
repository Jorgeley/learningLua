-- array is called 'table' in Lua. Why? Because they want.
array = {}
array[1] = 10
array[2] = {} -- you need to do this if you want a matrix
array[2][1] = 'string'
print(array[2][1],', ',array[1])

--the arrays are passed always by reference but they call 'anonymous tables' Cmon!
anotherArray = array
anotherArray[1] = 100
print(array[1])

-- you can use a constructor
days = {"Sunday", "Monday", "Tuesday", "Wednesday","Thursday", "Friday, pint day!", {"Saturday", "pint day again!"}}
print(days[6])
print(days[7][1],', ',days[7][2])

-- this is nice
a = {x=10, y='xxx'}
print(a.x,', ',a.y)