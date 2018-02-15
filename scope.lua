-- be aware of scopes, basically it's related to the strucutre blocks
x = 5 --global
local i = 1 --local to the chunk

while i<=x do
  local z = i*2    -- local to the while body
  print("local 'while var z': ", z)
  i = i + 1 --that global outside the while
  print("the local chunk 'i' exists inside the 'while': ", i)
end

print("offcourse the local chunk 'i' does exist outside the while as well: ",i)
print("But the local 'while var z' doesn't exist here: ", z)