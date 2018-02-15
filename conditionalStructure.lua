-- conditional structures
a = 3
if a<0 then --basic
  a = 0 
end    

b = 2


op = '*'
if op == "+" then --if, elseif, else
  r = a + b
elseif op == "-" then
  r = a - b
elseif op == "*" then
  r = a*b
elseif op == "/" then
  r = a/b
else
  error("invalid operation")
end

print(r)
if a<b then  --if, else
  return a 
else 
  return b 
end

print("this will never be executed due to the 'return' above")