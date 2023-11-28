package.path = package.path .. ";../modules/?.lua"
local boundingBox = require("boundingBox")
local vector = require("vector")

local box1 = boundingBox:new(vector:new(3,4), vector:new(5,6))
local box2 = boundingBox:new(vector:new(2,3), vector:new(4,5))
local box3 = boundingBox:new(vector:new(0,0), vector:new(2,2))

local result1 = box2:isColliding(box1)
local result2 = box3:isColliding(box1)

assert(result1 == true)
assert(result2 == false)

print("boundingBoxTest: passed")