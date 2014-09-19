-- Exercise for the syntax part of the course
-- "Football field sizes"
-- Task: Write a function to compute whether an international football game can be officially played on given size of a football field. The width of a football field can range between 64 and 75 meter and the length of the field must be between 100 and 110 meters. Use either case, guarded statement or an if statement and justify which of these are appropriate in this case.
--

canBePlayed width lenght = if ((width >= 64) && (width <= 75)) && ((lenght >= 100) && (lenght <= 110))
    then "Field can be used"
    else "Field isn't up to official standards"

