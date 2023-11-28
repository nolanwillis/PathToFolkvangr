package.path = package.path .. ";../modules/?.lua"
local vector = require("vector")

local v1 = vector:new(1,2)
local v2 = vector:new(3,4)

local sub = v1:subtract(v2)
local add = v1:add(v2)
local dot = v1:dot(v2)
local length = v1:length()

assert(sub.x == -2)
assert(sub.y == -2)
assert(add.x == 4)
assert(add.y == 6)
assert(dot == 11)

print("vectorTest: passed")