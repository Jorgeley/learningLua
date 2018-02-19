--pcall is the 'try-catch' basically

if pcall(
  function ()
    print(a[i]) --potential error, 'a' is not be a table
  end
  )then --no errors
else
  print('Heuston, we have a problem...')
end