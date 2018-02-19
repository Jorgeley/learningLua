-- repetition structures

z = 1
while (z < 3) do
  print("'while' loop var: ", z)
  z = z+1
end

z = 1
repeat
  print("'repeat' loop var: ", z)
  z = z+1
until (z > 3)

for i=1, 3 do
  print("1st 'for' loop var: ", i)
end

for i=3, 1, -1 do
  print("2nd 'for' loop var: ", i)
end

a = {'x',10,true}
for i,v in ipairs(a) do 
  print("3rd 'for' loop var, key: ", i, ", value: ", v) 
end

print("var 'i' doesn't exist here, be aware of scopes: ", i)