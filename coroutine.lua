-- coroutines are simply threads
co = coroutine.create(function ()
    for i=1,5 do
      print("co", i)
      print(coroutine.status(co))   --> running
      coroutine.yield() --pause execution
    end
  end)

print(coroutine.status(co))   --> suspended
coroutine.resume(co)    --> co   1
coroutine.resume(co)    --> co   2
coroutine.resume(co)    --> co   3
coroutine.resume(co)    --> co   4
coroutine.resume(co)    --> co   5
print(coroutine.status(co))   --> still suspended
coroutine.resume(co) --nothing to execute
coroutine.resume(co) --nothing to execute
coroutine.resume(co) --nothing to execute
coroutine.resume(co) --nothing to execute
print(coroutine.status(co))   --> dead