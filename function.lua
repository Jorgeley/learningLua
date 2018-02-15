-- factorial function
function fact(n)
  if n == 0 then
    return 1
  else
    return n * fact(n-1)
  end
end

print ("factorial of 3: ", fact(3))

-- we can have undefined number of arguments
function nolimits(...)
  print (type(...))
  print(...)
end

nolimits(10)
nolimits(10,10,10)