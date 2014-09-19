-- Exercises for the syntax part of the course "Try them out"
-- Task: Successfully try out every bit of syntax introduced in this chapter and write your experiments to a file. Include after each syntactic construct your thoughts about where they would be useful and if they were surprising to you.
--

-- Top level definitions
-- Thoughts: These definitions will be useful if program needs some pre set values before ning for example.
toplevel1 = 5*pi**6
toplevel2 = "This is top level test"
toplevel3 = show 2 ++ " cats love food"


-- Local definitions
-- Thoughts: Useful for local value definitions that are only needed inside function and shoudn't be visible to other functions outside.
local1 =
    let
        value1 = valueX * valueY
        value2 = valueX ** valueY
        valueX = 700*pi
        valueY = pi/2
    in (value1 + value2 / value1)

local2 = word1 ++ word2
    where
        word1 = 
            if toplevel1 > 0 then "Cats "
            else "Dogs "
        word2 = "run in the woods"

-- Conditionals and branching
-- Thoughts:

-- Guard statemet: convert speed to km/h
conditional1 speedPerHour unit
    | unit   == "km"   = speedPerHour
    | unit   == "m"    = speedPerHour/1000
    | otherwise               = -1

-- Case statement
conditional2 speedPerHour unit = case unit of
    "km"    -> speedPerHour
    "m"     -> speedPerHour/1000
    _       -> -1

conditional3 speedPerHour unit = if unit == "km"
    then speedPerHour
    else if unit == "m"
    then speedPerHour/1000
    else -1

-- SOME MISSING
