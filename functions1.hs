-- / Counts the number of lines in an string
numOfLines :: String -> Int
numOfLines str = length (lines str)

-- Examples:
-- numOfLines "Line1\nLine2" == 2
-- numOfLines "Line1 Line2" == 1

-- numOfLines "line1\nline2"
-- == {- split str by lines -}
-- length([line1, line2])
-- == {- calculate number of lines -}
-- 2

test :: Double -> Double -> Double -> Double 
test a b c = (c + (a / b))

-- / Calculates months that it takes to save monnies
monthsTillMonnies :: Double -> Double -> Double -> Int
monthsTillMonnies goal income expenses = ceiling nonroundup 
	where 
	nonroundup = goal / (income - expenses)


-- Examples
-- monthsTillMonnies 2000 400 300 = 20
-- monthsTillMOnnies 300 400 68 = 1

-- monthsTillMonnies 300 400 68
-- == {- Resolves nonroundup: goal / (income - expenses) -}
-- ceiling nonroundup
-- == {- ceiling 0,903614458 -}
-- 1


calcTriangleArea :: Double -> Double -> Double -> Double
calcTriangleArea a b c = area
	where
	area 	= sqrt (s*(s-a)*(s-b)*(s-c))
	s 	= (a+b+c)/2

-- Example
-- calcTriangleArea 3 4 5 = 6.0
-- calcTriangleArea 10 10 5 = 24.206145913796355

-- calcTriangleArea 3 4 5
-- == {- Resolve s = (3+4+5)/2 = 6 -}
-- sqrt (s*(s-a)*(s-b)*(s-c))
-- == {- Resolve area (6*(6-3)*(6-4)*(6-5)) -}
-- 6.0
