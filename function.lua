-- siple factorial function
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

-- closures
function newCounter()
  local i = 0
  return function ()   -- anonymous function
    i = i + 1
    return i
  end
end

c1 = newCounter() --this execute the whole code above, like a class constructor
print(c1())  --this calls the anonymous function, like a pseudo method, it returns 1
print(c1())  --calling again, it returns 2, cause the variable i gets 0 only once when newCounter is instantiated

-- this is messy, but interesting
function newCounter2()
  local i = 0
  return {
    add = function(n)   --a function indexed to a table
      i = i + n
      return i
    end,
    sub = function(n)   --another function indexed to a table
      i = i - n
      return function() --freedom is the law in Lua
        i = i..' in messy nested function'
        return i
      end
    end
  }
end

c2 = newCounter2()
print(c2.add(5))
print(c2.add(2))
print(c2.sub(9)())