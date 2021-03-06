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


-- / Calculates months that it takes to save monnies
monthsTillMonnies :: Double -> Double -> Double -> String 
monthsTillMonnies goal income expenses = nonroundup 
	where 
    nonroundup = if (income - expenses) <= 0 
        then "You are loosing money every month! You are unable to save any money."
	    else "You can save the money in " ++ show (ceiling (goal / (income - expenses))) ++ " months."


-- Examples
-- monthsTillMonnies 2000 400 300 = 20
-- monthsTillMonnies 2999 300 1000 = You are loosing money every month! You are unable to save any money.
-- monthsTillMonnies 300 400 68 = You can save the money in 1 months.

-- monthsTillMonnies 300 400 68
-- == {- Resolve if statement (income - expenses) <= 0 goto else if bigger than zero -} 
-- else "You can save the money in " ++ show (ceiling (goal / (income - expenses))) ++ " months."
-- == {- Resolve (ceiling (goal / (income - expenses))) -}
-- 300 / (400 - 68) 
-- == {- Resolves nonroundup: "You can save the money in " ++ show (ceiling 0.903614458) ++ " months."
-- ceiling 0.903614458
-- == {- Form the string:  "You can save the money in " ++ show 1 ++ " months." -}
-- You can save the money in 1 months.


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


-- / Calculates the area of a circle based on it's diameter
circleArea :: Double -> Double
circleArea diameter = pi * (diameter/2)**2

-- Examples
-- circleArea 20 = 314 ja roippeet

-- circleArea 20
-- == {- calculate radius diameter/2 -}
-- pi * 10**2
-- == {- raise to exponent -}
-- pi * 100
-- == {- calculate area -}
-- 314 ja j\E4m\E4t

-- / Calculates the area of a rectangle
rectangleArea :: Double -> Double -> Double
rectangleArea sidea sideb = sidea*sideb

-- Examples
-- rectangeArea 20 15 = 300

-- rectangleArea 20 15
-- == {- calculate area: 20*15 -}
-- 300

-- / Vomits domain from url
cleanUrl :: String -> String
cleanUrl url = cleanedUrl
	where
	startCleaned = dropWhile (/='w') url
	cleanedUrl = takeWhile (/='/') startCleaned

-- Examples
-- cleanUrl http://www.google.fi/asd/asd/asd = www.google.fi

-- cleanUrl http://www.google.fi/asdasdasd/kukkanen
-- == {- drop http:// : takeWhile (/='/') startCleaned -}
-- www.google.fi/asdasdasd/kukkanen
-- == {- take until first / is seen: takeWhile (/='/') www.google.fi/asdasdasd/kukkanen
-- www.google.fi
