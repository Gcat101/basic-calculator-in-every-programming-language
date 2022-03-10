#!/usr/bin/env lua

io.write('\n')

io.write("Input your first number: ")
local first = tonumber(io.read())
io.write("Input your second number: ")
local second = tonumber(io.read())

if first==nil or second==nil then
    print("Unknown number\n")
    os.exit(1)
end

io.write("What do you want to do (+|-|*|/): ")
local action = io.read()

local result
if action=='+' then
    result=first+second
elseif action=='-' then
    result=first-second
elseif action=='*' then
    result=first*second
elseif action=='/' then
    result=math.floor(first/second)
else
    print("Unknown action\n")
    os.exit(1)
end

print(string.format("Result: %s", result))

io.write('\n')