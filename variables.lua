-- these are the Lua variable types
print(type("string"))  --> string
print(type('string'))  --> string
print(type(10.4*3))         --> number
print(type(print))          --> function
print(type(type))           --> function
print(type(true))           --> boolean
print(type(false))           --> boolean
print(type(nil))            --> nil
print(type(notDefinedVar))            --> nil
print(type(type(X)))        --> string, because the result of 'type(X)' is a string

-- you can use undefined vars, this variable is global
print(var)
var = 10
print(var)

-- you can also do a mess by assigning another type to a var previously assigned, Lua is not strongly typed
var = 'xx'
print(var)

--[[ we can fuck off everything by using brackets to delimit long strings like mixing HTML with Lua 
(DON'T DO THIS IF YOU DON'T WANT TO SUFFER IN HELL) --]]
fuckedHTML = [[
    <HTML>
    <HEAD>
    <TITLE>An HTML Page</TITLE>
    </HEAD>
    <BODY>
     <A HREF="http://www.lua.org">Lua</A>
    </BODY>
    </HTML>
    ]]
print(fuckedHTML)

-- you can also use \ to scape characters and also for control characters
var = var .. '\nyy\'' -- '..' is the concatenate operator
print(var)

-- you can also delete global variables by assigning 'nil' to them
var=nil
print(var)