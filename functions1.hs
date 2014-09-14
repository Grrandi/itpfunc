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


